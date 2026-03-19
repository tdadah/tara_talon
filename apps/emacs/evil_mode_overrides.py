from talon import Context, actions

ctx = Context()
ctx.matches = "app: emacs"


@ctx.action_class("user")
class UserActions:
    def emacs_leader():
        actions.key("'")
