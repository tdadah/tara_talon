from talon import Module, actions
import sys

mod = Module()


@mod.action_class
class Actions:
    # Primary controls
    def whisper_start():
        """Starts Superwhisper and disables Talon speech"""
        actions.speech.disable()
        actions.key("alt-space")

    """ todo: delete ' Whisper stop. ' """
    def whisper_stop(wake_talon: bool = True):
        """Stops Superwhisper and optionally enables Talon speech"""
        actions.key("alt-space")
        if wake_talon:
            actions.speech.enable()

    def whisper_cancel():
        """Cancels Superwhisper and enables Talon speech"""
        actions.speech.enable()
        actions.key("esc")
