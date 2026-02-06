tag: user.talon_hud_available
and tag: user.talon_hud_visible
-

# Show available voice commands for the current context
toolkit commands: user.hud_toolkit_commands()

# Toggle between compact (15 per context, 5 tags) and expanded (all) views
commands expand: user.hud_toolkit_commands_expand()
commands compact: user.hud_toolkit_commands_compact()

# Toggle debug mode to show specificity scores for sorting
commands debug: user.hud_toolkit_commands_debug()

# Pagination shortcuts
scroll commands down: user.hud_increase_widget_page("Text panel")
scroll commands up: user.hud_decrease_widget_page("Text panel")

# To hide, use the built-in HUD command: "available commands hide"
