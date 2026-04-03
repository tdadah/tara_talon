app: emacs
tag: user.doom
-
# ---- Dired: Open ----
open dired:
    user.emacs_leader()
    key(o -)

dired here: user.emacs("dired-jump")

# ---- Dired: Navigation ----
# Go up to parent directory
dired up: key(-)

# Open file or directory at point
dired open: key(return)

# Preview file without leaving dired
dired peek: user.emacs("dired-display-file")

# Go to first/last file
dired top: key(g g)
dired bottom: key(G)

# ---- Dired: Marking ----
dired mark: key(m)
dired unmark: key(u)
dired unmark all: key(U)
dired toggle marks: key(t)
dired mark delete: key(d)

# ---- Dired: Operations ----
# Execute flagged operations (e.g. deletions)
dired execute: key(x)

# Rename/move file at point
dired rename: key(R)

# Copy file at point
dired copy: key(C)

# Delete file at point immediately
dired delete: key(D)

# Create new directory
dired new directory: key(+)

# ---- Dired: View ----
# Toggle detailed view
dired details: key(()

# Refresh directory listing
dired refresh: key(g r)

# Sort by name/date
dired sort: key(s)

# Toggle omit (hide dotfiles etc.)
dired omit: user.emacs("dired-omit-mode")

# ---- Dired: Wdired (editable dired) ----
# Enter writable dired mode for bulk rename
dired edit: user.emacs("wdired-change-to-wdired-mode")
dired finish: user.emacs("wdired-finish-edit")
dired abort: user.emacs("wdired-abort-changes")