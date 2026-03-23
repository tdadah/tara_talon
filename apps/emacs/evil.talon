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

# ---- Claude Code IDE ----
claude open: user.emacs("claude-code-ide")
(claude stop | claude escape): user.emacs("claude-code-ide-send-escape")
claude newline: user.emacs("claude-code-ide-insert-newline")
claude menu: key(ctrl-c ctrl-')

# ---- Editing ----
recenter: key(z z)
undo: key(u)
redo: key(ctrl-r)

# ---- Window focus (Evil ctrl-w bindings) ----
jump next: key(ctrl-w ctrl-w)
jump last: key(ctrl-w W)
jump left: key(ctrl-w h)
jump right: key(ctrl-w l)
jump up: key(ctrl-w k)
jump down: key(ctrl-w j)

# ---- Buffer tabs (centaur-tabs) ----
tab next: key(g t)
tab back: key(g T)

# ---- Doom leader key ----
# Override user.emacs_leader in settings.talon to match your doom config:
#   user.emacs_leader = apostrophe
leader: user.emacs_leader()

# ---- Calendar sync ----
calendar sync: user.emacs("my/gcal-sync")

# ---- Org agenda ----
org agenda:
    user.emacs_leader()
    key(o a)

org agenda day: user.emacs("org-agenda-day-view")
org agenda week: user.emacs("org-agenda-week-view")
org agenda month: user.emacs("org-agenda-month-view")
org agenda today: user.emacs("org-agenda-goto-today")
org agenda todo: user.emacs("org-agenda-todo")
org agenda next: user.emacs("org-agenda-later")
org agenda last: user.emacs("org-agenda-earlier")

# ---- Org navigation ----
org next heading: user.emacs("org-next-visible-heading")
org last heading: user.emacs("org-previous-visible-heading")
org up heading: user.emacs("org-up-heading")
org fold: user.emacs("org-cycle")
org fold all: user.emacs("org-overview")
org unfold all: user.emacs("org-show-all")
org todo: user.emacs("org-todo")
org check: user.emacs("org-toggle-checkbox")

# ---- Org priority ----
org priority:
    user.emacs_leader()
    key(m p p)

org priority up:
    user.emacs_leader()
    key(m p u)

org priority down:
    user.emacs_leader()
    key(m p d)

# ---- Org dates ----
org schedule:
    user.emacs_leader()
    key(m d s)

org deadline:
    user.emacs_leader()
    key(m d d)

# ---- Org capture ----
capture todo:
    user.emacs_leader()
    key(X t)

capture journal:
    user.emacs_leader()
    key(X j)

capture finish: key(ctrl-c ctrl-c)
capture refile: key(ctrl-c ctrl-w)
capture abort: key(ctrl-c ctrl-k)

# ---- Project search ----
# ---- Code navigation ----
find definition: user.emacs("lsp-find-definition")
find references: user.emacs("lsp-find-references")

search directory:
    user.emacs_leader()
    key(s d)

search project:
    user.emacs_leader()
    key(s p)

# ---- File finder ----
find file anywhere:
    user.emacs_leader()
    key(f l)

recent files:
    user.emacs_leader()
    key(f r)

# ---- Project file finder ----
find file:
    user.emacs_leader()
    key(space)

switch project:
    user.emacs_leader()
    key(p p)

# ---- Git ----
magit status:
    user.emacs_leader()
    key(g g)

git pull:
    user.emacs_leader()
    key(g f p)

git push:
    user.emacs_leader()
    key(g p p)

git fetch:
    user.emacs_leader()
    key(g f f)

git blame:
    user.emacs_leader()
    key(g B)

git branch:
    user.emacs_leader()
    key(g b)

# ---- Vterm ----
vterm:
    user.emacs_leader()
    key(o T)

# ---- Treemacs ----
(treemacs | open project tree):
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
