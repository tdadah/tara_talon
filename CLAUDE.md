# tara_talon - Claude Code Context

Personal Talon Voice configuration for voice-driven development with Doom Emacs.

## Workflow Overview

Primary editor is **Doom Emacs** controlled via Talon voice commands. The Talon commands in this repo send key sequences and M-x commands to Emacs, so changes here must stay in sync with the Doom config.

## Doom Emacs Configuration

- **Config location**: `~/.config/doom/` (symlinked from source repo at `~/src/tdadah/doom`)
- **Leader key**: single quote (`'`), NOT the default space key
  - The `user.emacs_leader` setting defaults to `"space"` in `apps/emacs/evil_mode.py`
  - Overridden to `"'"` in `apps/emacs/evil_mode_overrides.py`
  - All leader-prefixed Talon commands use `user.emacs_leader()` which resolves to `'`
- **Meta key**: `alt` (set in `settings.talon`)

When adding or modifying Doom keybinding commands, use `user.emacs_leader()` for leader-prefixed sequences rather than hardcoding a key.

## Repository Structure

- `apps/emacs/` - Doom Emacs voice commands and evil-mode state tracking
  - `doom.talon` - Main Doom commands (navigation, editing, org-mode, magit, workspaces, etc.)
  - `evil_normal.talon` - Commands active only in evil normal mode
  - `evil_mode.py` - Evil mode state management, tags, and settings
  - `evil_mode_overrides.py` - User-specific overrides (leader key = `'`)
- `settings.talon` - Global Talon settings
- `*.talon` (root) - App-specific and general voice commands
- `llm_dictation/` - LLM-powered dictation

## Key Patterns

- **Evil mode tracking**: Talon tracks evil normal/insert state via tags (`user.evil_normal`, `user.evil_insert`) so mode-specific commands only activate in the right mode
- **Doom leader sequences**: Commands like `workspace new` send `leader` then a key sequence (e.g., `TAB n`). These mirror Doom's `SPC`-prefixed bindings but use `'` as the leader
- **M-x commands**: For commands without short keybindings, use `user.emacs("command-name")` which runs `M-x command-name`

## Related Resources

- **Community commands**: `~/.talon/user/community/` (defaults this repo overrides)
- **Talon docs**: `~/.claude/docs/talon-wiki/`
- **Quick reference**: `QUICK_REFERENCE.md` in this directory
