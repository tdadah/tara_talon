app: emacs
tag: user.doom
user.emacs_mode: dired-mode
-
# ---- Dired: Navigation ----
dired up: key(-)
dired open: key(return)
dired peek: user.emacs("dired-display-file")
dired top: key(g g)
dired bottom: key(G)
(dear|deer|directory) up: key(^)

# ---- Dired: Marking ----
dired mark: key(m)
dired unmark: key(u)
dired unmark all: key(U)
dired toggle marks: key(t)
dired mark delete: key(d)

# ---- Dired: Operations ----
dired execute: key(x)
dired rename: key(R)
dired copy: key(C)
dired delete: key(D)
dired new directory: key(+)

# ---- Dired: View ----
dired details: key(()
dired refresh: key(g r)
dired sort: key(s)
dired omit: user.emacs("dired-omit-mode")

# ---- Dired: Wdired (editable dired) ----
dired edit: user.emacs("wdired-change-to-wdired-mode")
dired finish: user.emacs("wdired-finish-edit")
dired abort: user.emacs("wdired-abort-changes")
