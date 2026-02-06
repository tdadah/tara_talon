"""
Context Commands Poller for Talon HUD

Displays available voice commands for the current window/context in the HUD.
Commands update automatically as you switch between applications and contexts.

Voice commands:
- "toolkit commands" - Show available commands for current context
- "commands hide" - Hide the commands panel
"""

from talon import Module, actions, app, cron, registry, scope

mod = Module()


class ContextCommandsPoller:
    """Polls and displays available voice commands for the current context."""

    enabled = False
    content = None  # Set by HUD when poller is registered
    topic = "context_commands"
    previous_command_hash = ""

    startup_refresh_job = None

    def enable(self):
        """Called when the HUD activates this poller."""
        if not self.enabled:
            self.enabled = True
            # Register for context changes (fires when switching apps)
            registry.register("update_contexts", self._on_update)
            # Also register for command updates (fires when commands are reloaded)
            registry.register("update_commands", self._on_update)
            # Initial publish
            self._publish_commands(show=True)
            # Schedule a delayed refresh to catch contexts that load after startup
            self.startup_refresh_job = cron.after("2s", self._delayed_refresh)

    def _delayed_refresh(self):
        """Refresh after startup to catch late-loading contexts."""
        self.startup_refresh_job = None
        if self.enabled:
            self.previous_command_hash = ""  # Force refresh
            self._publish_commands(show=False)

    def disable(self):
        """Called when the HUD deactivates this poller."""
        if self.enabled:
            self.enabled = False
            # Cancel any pending startup refresh
            if self.startup_refresh_job:
                cron.cancel(self.startup_refresh_job)
                self.startup_refresh_job = None
            try:
                registry.unregister("update_contexts", self._on_update)
            except:
                pass
            try:
                registry.unregister("update_commands", self._on_update)
            except:
                pass
        # Always try to remove the content
        if self.content:
            self.content.publish_event("text", self.topic, "remove")

    def _on_update(self, _):
        """Called when contexts or commands change."""
        if self.enabled:
            self._publish_commands(show=False)

    def _publish_commands(self, show=False):
        """Gather and publish active commands to the HUD."""
        if not self.content:
            return

        text = self._format_commands()

        # Only update if content changed (avoid flicker)
        text_hash = str(hash(text))
        if text_hash == self.previous_command_hash:
            return
        self.previous_command_hash = text_hash

        panel_content = self.content.create_panel_content(
            text,
            self.topic,
            "Available Commands",
            show
        )
        self.content.publish_event("text", panel_content.topic, "replace", panel_content, show)

    # Contexts to hide (case-insensitive path matching)
    hidden_context_patterns = [
        "cursorless",
    ]

    # Contexts to prioritize (shown first, case-insensitive path matching)
    priority_context_patterns = [
        "tara_talon",
    ]

    # Max commands to show per context (0 = unlimited)
    # Use "available commands next/back" to paginate through long content
    max_commands_per_context = 15

    # Max tags to show in header (0 = unlimited)
    max_tags_display = 5

    # Show debug info (specificity scores) in output
    debug_mode = False

    # Generic tags to filter out from display and sorting
    generic_tags = [
        "user.command",
        "user.dictation",
        "user.talon_hud_available",
        "user.talon_hud_visible",
    ]

    def _format_commands(self) -> str:
        """Format active commands grouped by context."""
        active_contexts = registry.last_active_contexts
        active_commands = set(registry.commands.keys())

        # Get current app info for header
        current_app = scope.get("app", {})
        app_name = current_app.get("name", "Unknown") if isinstance(current_app, dict) else "Unknown"

        # Get active tags for sorting by tag specificity
        active_tags = set(scope.get("tag", []) or [])

        # Filter to interesting tags for display
        interesting_tags = sorted([
            tag for tag in active_tags
            if tag not in self.generic_tags
            and not tag.startswith("user.talon_hud")
        ])

        lines = []
        lines.append(f"<*App:/> {app_name}")
        if interesting_tags:
            limit = self.max_tags_display
            if limit > 0 and len(interesting_tags) > limit:
                tag_display = interesting_tags[:limit]
                tag_display.append(f"+{len(interesting_tags) - limit} more")
            else:
                tag_display = interesting_tags
            lines.append(f"<*Tags:/> {', '.join(tag_display)}")
        lines.append("")

        # Group commands by context
        context_commands = {}
        context_metadata = {}  # Store path and specificity info for sorting

        for context in active_contexts:
            context_path = str(getattr(context, 'path', '')).lower()

            # Skip hidden contexts
            if any(pattern in context_path for pattern in self.hidden_context_patterns):
                continue

            context_name = self._get_context_display_name(context)
            commands = []

            for cmd_key, cmd in context.commands.items():
                # Only include commands that are currently active
                if cmd_key in active_commands:
                    rule = str(cmd.rule.rule)
                    # Skip very long/complex rules for readability
                    if len(rule) < 80:
                        commands.append(rule)

            if commands:
                context_commands[context_name] = sorted(commands)
                # Check context specificity
                is_app_specific = False
                is_tag_specific = False
                has_specific_tags = False  # Has non-generic tags like user.git
                tag_match_count = 0
                specificity_score = 0
                try:
                    match_dict = getattr(context, '_match', {})
                    match_keys = list(match_dict.keys())

                    is_app_specific = any(k.startswith("app.") for k in match_keys)
                    if is_app_specific:
                        specificity_score += 1000  # App-specific = highest priority

                    # Check for tag requirements - tags may be stored as "tag" key with values
                    # or as "tag.user.something" keys
                    for key in match_keys:
                        if key.startswith("tag."):
                            tag_name = key.replace("tag.", "")
                            is_tag_specific = True
                            if tag_name not in self.generic_tags:
                                has_specific_tags = True
                                specificity_score += 100
                                if tag_name in active_tags or f"user.{tag_name}" in active_tags:
                                    tag_match_count += 1
                                    specificity_score += 20
                        elif key == "tag":
                            # Tags stored as "tag" key with value(s)
                            tag_values = match_dict.get("tag", [])
                            if isinstance(tag_values, str):
                                tag_values = [tag_values]
                            for tag_name in tag_values:
                                is_tag_specific = True
                                if tag_name not in self.generic_tags:
                                    has_specific_tags = True
                                    specificity_score += 100
                                    if tag_name in active_tags:
                                        tag_match_count += 1
                                        specificity_score += 20

                except:
                    pass

                # Path-based detection for tag and app directories (outside try block)
                # Handle both file paths (/apps/) and module paths (.apps.)
                if any(p in context_path for p in ["/tags/", "\\tags\\", ".tags.", "tags."]):
                    has_specific_tags = True
                    specificity_score += 80  # Files in tags/ directory
                if any(p in context_path for p in ["/apps/", "\\apps\\", ".apps.", "apps."]):
                    specificity_score += 80  # Files in apps/ directory

                # Bonus for contexts whose name/path matches an active tag
                # This prioritizes git.talon when user.git is active, etc.
                for tag in interesting_tags:
                    # Extract the short tag name (e.g., "git" from "user.git")
                    tag_short = tag.split(".")[-1] if "." in tag else tag
                    # Check if tag name appears in context path
                    if f".{tag_short}." in context_path or context_path.endswith(f".{tag_short}.talon"):
                        specificity_score += 50  # Bonus for matching active tag
                        break  # Only count once
                context_metadata[context_name] = {
                    'path': context_path,
                    'is_app_specific': is_app_specific,
                    'is_tag_specific': is_tag_specific,
                    'has_specific_tags': has_specific_tags,
                    'tag_match_count': tag_match_count,
                    'specificity_score': specificity_score
                }

        # Calculate final scores including priority boost
        for context_name in context_metadata:
            meta = context_metadata[context_name]
            path = meta.get('path', '')
            is_priority = any(p in path for p in self.priority_context_patterns)
            if is_priority:
                meta['specificity_score'] += 50
                meta['is_priority'] = True
            else:
                meta['is_priority'] = False

        def get_sort_key(context_name):
            meta = context_metadata.get(context_name, {})
            specificity_score = meta.get('specificity_score', 0)
            # Sort order (higher specificity score = higher priority, so negate it)
            return (
                -specificity_score,
                context_name.lower()
            )

        sorted_contexts = sorted(context_commands.keys(), key=get_sort_key)

        total_commands = sum(len(cmds) for cmds in context_commands.values())
        lines.append(f"<*Commands:/> {total_commands} active")
        lines.append("")

        for context_name in sorted_contexts:
            commands = context_commands[context_name]
            meta = context_metadata.get(context_name, {})
            score = meta.get('specificity_score', 0)
            if self.debug_mode:
                path = meta.get('path', '')
                # Show abbreviated path for debugging
                path_short = path.split('user/')[-1] if 'user/' in path else path[-50:]
                lines.append(f"<*{context_name}/> ({len(commands)}) [score: {score}, path: {path_short}]")
            else:
                lines.append(f"<*{context_name}/> ({len(commands)})")
            limit = self.max_commands_per_context
            if limit > 0:
                for cmd in commands[:limit]:
                    lines.append(f"  <cmd@{cmd}/>")
                if len(commands) > limit:
                    lines.append(f"  ... and {len(commands) - limit} more")
            else:
                # No limit - show all commands
                for cmd in commands:
                    lines.append(f"  <cmd@{cmd}/>")
            lines.append("")

        if not context_commands:
            lines.append("<!!No active commands found/>")

        return "\n".join(lines)

    def _get_context_display_name(self, context) -> str:
        """Extract a readable name from a context."""
        try:
            path = str(context.path)

            # Handle both file paths and module paths (dots)
            # Normalize to use dots as separator
            normalized = path.replace("\\", "/").replace("/", ".")
            if normalized.endswith(".talon"):
                normalized = normalized[:-6]

            parts = normalized.split(".")
            filename = parts[-1] if parts else normalized

            # Clean up the filename
            display_name = filename.replace("_", " ").title()

            # Add prefix based on source
            path_lower = normalized.lower()
            if "tara_talon" in path_lower:
                return f"[Tara] {display_name}"
            elif "knausj_talon" in path_lower:
                # Find subdirectory after knausj_talon
                for i, part in enumerate(parts):
                    if part.lower() == "knausj_talon" and i + 1 < len(parts) - 1:
                        subdir = parts[i + 1]
                        if subdir.lower() in ["apps", "tags", "core", "plugin"]:
                            return f"[{subdir.title()}] {display_name}"
                        break
                return display_name
            else:
                return display_name
        except:
            return "Unknown Context"


# Global poller instance
context_commands_poller = ContextCommandsPoller()


def register_poller():
    """Register the poller with the HUD when Talon is ready."""
    try:
        # keep_alive=True makes the poller start automatically and stay active
        actions.user.hud_add_poller(context_commands_poller.topic, context_commands_poller, keep_alive=True)
    except Exception as e:
        print(f"Could not register context commands poller: {e}")


app.register("ready", register_poller)


@mod.action_class
class Actions:

    def hud_toolkit_commands():
        """Show available voice commands for the current context in the HUD"""
        actions.user.hud_activate_poller(context_commands_poller.topic)

    def hud_toolkit_commands_expand():
        """Show all commands and tags (no limits)"""
        context_commands_poller.max_commands_per_context = 0
        context_commands_poller.max_tags_display = 0
        context_commands_poller.previous_command_hash = ""  # Force refresh
        context_commands_poller._publish_commands(show=False)

    def hud_toolkit_commands_compact():
        """Show compact view (15 commands per context, 5 tags)"""
        context_commands_poller.max_commands_per_context = 15
        context_commands_poller.max_tags_display = 5
        context_commands_poller.previous_command_hash = ""  # Force refresh
        context_commands_poller._publish_commands(show=False)

    def hud_toolkit_commands_debug():
        """Toggle debug mode to show specificity scores"""
        context_commands_poller.debug_mode = not context_commands_poller.debug_mode
        context_commands_poller.previous_command_hash = ""  # Force refresh
        context_commands_poller._publish_commands(show=False)
