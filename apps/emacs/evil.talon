app: emacs
-
# ---- Mode switching ----
# These are available regardless of current evil state so you can always
# re-sync Talon if it drifts out of step with the actual editor mode.

normal [mode]:
    key(escape)
    user.evil_set_normal()

insert [mode]:
    key(i)
    user.evil_set_insert()

# Insert after cursor (evil "a")
append [mode]:
    key(a)
    user.evil_set_insert()

# Open a new line below and enter insert mode (evil "o")
open [line] [below]:
    key(o)
    user.evil_set_insert()

# Open a new line above and enter insert mode (evil "O")
open [line] above:
    key(O)
    user.evil_set_insert()

# ---- Doom leader key ----
# Override user.emacs_leader in settings.talon to match your doom config:
#   user.emacs_leader = apostrophe
leader: user.emacs_leader()

# ---- Project file finder ----
find file:
    user.emacs_leader()
    key(space)

# ---- Treemacs ----
treemacs:
    user.emacs_leader()
    key(o p)

reveal file:
    user.emacs_leader()
    key(o P)

# ---- Workspaces (Doom persp-mode) ----
show workspaces:
    user.emacs_leader()
    key(tab tab)

workspace next:
    user.emacs_leader()
    key(tab ])

workspace back:
    user.emacs_leader()
    key(tab [)

workspace close:
    user.emacs_leader()
    key(tab d)

workspace new:
    user.emacs_leader()
    key(tab n)

workspace rename:
    user.emacs_leader()
    key(tab r)

workspace <number_small>:
    user.emacs_leader()
    key("tab {number_small}")
