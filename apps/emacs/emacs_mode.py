import os

from talon import Module, cron

mod = Module()
STATE_FILE = "/tmp/talon-emacs-state"


@mod.scope
def emacs_scope():
    try:
        mode = open(STATE_FILE).read().strip()
    except (FileNotFoundError, PermissionError):
        mode = ""
    return {"emacs_mode": mode}


cron.interval("300ms", emacs_scope.update)
