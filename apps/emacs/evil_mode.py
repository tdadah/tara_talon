from talon import Context, Module, actions, settings, ui

mod = Module()
mod.tag("evil_normal", desc="Evil-mode normal mode is active in Emacs")
mod.tag("evil_insert", desc="Evil-mode insert mode is active in Emacs")

mod.setting(
    "emacs_leader",
    type=str,
    default="space",
    desc="The Doom Emacs leader key (e.g. 'space' or 'apostrophe').",
)

# This context is used to dynamically toggle evil mode tags.
# Talon reads ctx.tags to know which tag-gated commands are active.
evil_ctx = Context()
evil_ctx.matches = "app: emacs"
evil_ctx.tags = ["user.evil_normal"]


def on_win_focus(win):
    if "emacs" in win.app.name.lower():
        evil_ctx.tags = ["user.evil_normal"]

ui.register("win_focus", on_win_focus)


@mod.action_class
class Actions:
    def evil_set_normal():
        "Update Talon state to reflect evil normal mode (does not send keys to Emacs)."
        evil_ctx.tags = ["user.evil_normal"]

    def evil_set_insert():
        "Update Talon state to reflect evil insert mode (does not send keys to Emacs)."
        evil_ctx.tags = ["user.evil_insert"]

    def emacs_leader():
        "Press the Doom Emacs leader key."
        actions.key(settings.get("user.emacs_leader"))
