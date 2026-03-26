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

# ---- Help ----
show keys: user.emacs("describe-bindings")
show mode: user.emacs("describe-mode")

# ---- Scrolling ----
scroll down: key(ctrl-d)
scroll up: key(ctrl-u)
page down: key(ctrl-f)
page up: key(ctrl-b)

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

# ---- Org roam ----
roam find:
    user.emacs_leader()
    key(n r f)

roam insert:
    user.emacs_leader()
    key(n r i)

roam backlinks:
    user.emacs_leader()
    key(n r r)

roam sync: user.emacs("org-roam-db-sync")

roam today:
    user.emacs_leader()
    key(n r d T)

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

# ---- Org archive ----
org archive: user.emacs("org-archive-subtree")
org refile: user.emacs("org-refile")

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

capture meeting:
    user.emacs_leader()
    key(X m)

capture pull request:
    user.emacs_leader()
    key(X p)

capture finish: key(ctrl-c ctrl-c)
capture refile: key(ctrl-c ctrl-w)
capture abort: key(ctrl-c ctrl-k)

# ---- Project search ----
# ---- Ediff ----
diff next: user.emacs("ediff-next-difference")
diff last: user.emacs("ediff-previous-difference")
diff accept (a | left): user.emacs("ediff-copy-A-to-B")
diff accept (b | right): user.emacs("ediff-copy-B-to-A")
diff quit: user.emacs("ediff-quit")

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
magit next: user.emacs("magit-section-forward-sibling")
magit last: user.emacs("magit-section-backward-sibling")
magit next file: user.emacs("magit-section-forward")
magit last file: user.emacs("magit-section-backward")
magit visit file: user.emacs("magit-diff-visit-file")
magit expand: user.emacs("magit-section-toggle")

magit stash: user.emacs("magit-stash")
magit push: user.emacs("magit-push")
magit pull: user.emacs("magit-pull")
magit fetch: user.emacs("magit-fetch")
magit commit: user.emacs("magit-commit")
magit merge: user.emacs("magit-merge")
magit rebase: user.emacs("magit-rebase")
magit log: user.emacs("magit-log")
magit diff: user.emacs("magit-diff")
magit checkout: user.emacs("magit-checkout")
magit cherry pick: user.emacs("magit-cherry-pick")
magit reset: user.emacs("magit-reset")
magit stage: user.emacs("magit-stage")
magit unstage: user.emacs("magit-unstage")
magit discard: user.emacs("magit-discard")

magit status:
    user.emacs_leader()
    key(g g)

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
