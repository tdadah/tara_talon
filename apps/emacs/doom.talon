app: emacs
tag: user.doom
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
claude (stop | escape): user.emacs("claude-code-ide-send-escape")
claude newline: user.emacs("claude-code-ide-insert-newline")
claude menu: key(ctrl-c ctrl-')

# ---- Messages ----
show messages: user.emacs("view-echo-area-messages")

# ---- Navigation ----
go top:         key(g g)
go bottom:      key(G)
go [line] start: key(0)
go [line] end:  key($)
go word:        key(w)
go back [word]: key(b)
go [word] end:  key(e)

# ---- Editing (normal mode) ----
delete line:    key(d d)
delete word:    key(d w)
yank line:      key(y y)
paste [below]:  key(p)
paste above:    key(P)

# ---- Spell check ----
# spell check: key(z =)
spell check: user.emacs("flyspell-correct-at-point")

# ---- Search ----
search:         key(/)
search back:    key(?)
next [match]:   key(n)
prev [match]:   key(N)

# ---- Frame ----
fit screen: user.emacs("my/fit-screen")

# ---- Help ----
show keys: user.emacs("describe-bindings")
show mode: user.emacs("describe-mode")
doom reload:
    user.emacs_leader()
    key(h r r)

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
tab (back|last): key(g T)
I buffer:
  user.emacs_leader()
  key(b i)
buffer back: key(' b [)
buffer next: key(' b ])

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

roam insert [(node|link)]:
    user.emacs_leader()
    key(n r i)

roam (backlinks|buffer):
    user.emacs_leader()
    key(n r r)

roam capture:
    user.emacs_leader()
    key(n r n)

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

capture (finish | complete): key(ctrl-c ctrl-c)
capture refile: key(ctrl-c ctrl-w)
capture abort: key(ctrl-c ctrl-k)

# ---- Project search ----
refresh projects:
    user.emacs_leader()
    key(p D)
discover projects: user.emacs("projectile-discover-projects-in-search-path")

# ---- Ediff ----
diff next: user.emacs("ediff-next-difference")
diff toggle: user.emacs("ediff-toggle-split")
diff scroll down: user.emacs("ediff-scroll-vertically")
diff scroll up: user.emacs("ediff-scroll-vertically-reverse")
diff last: user.emacs("ediff-previous-difference")
diff accept (a | left): user.emacs("ediff-copy-A-to-B")
diff accept (b | right): user.emacs("ediff-copy-B-to-A")
diff quit: user.emacs("ediff-quit")

# ---- Markdown ----
markdown preview: user.emacs("markdown-view-mode")
markdown mode: user.emacs("markdown-mode")
grip mode: user.emacs("grip-mode")
markdown link:
    user.emacs_leader()
    key(m i l)
markdown code:
    user.emacs_leader()
    key(m i c)
markdown block quote:
    user.emacs_leader()
    key(m i q)
markdown code block:
    user.emacs_leader()
    key(m i C)
markdown table:
    user.emacs_leader()
    key(m i t)
markdown table (line|align):
    user.emacs("markdown-table-align")


# ---- dired ----
(dear|deer|directory) up: key(^)

# ---- Visual mode ----
visual mode:
    key(v)
    user.evil_set_insert()

visual line mode:
    key(V)
    user.evil_set_insert()

visual block mode:
    key(ctrl-v)
    user.evil_set_insert()

# ---- Code folding ----
collapse toggle: key(z a)
collapse: key(z c)
expand: key(z o)
collapse all: key(z M)
expand all: key(z R)

# ---- Multiple cursors (evil-mc) ----
cursor all: user.emacs("evil-mc-make-all-cursors")
cursor next: user.emacs("evil-mc-make-and-goto-next-match")
cursor last: user.emacs("evil-mc-make-and-goto-prev-match")
cursor below: user.emacs("evil-mc-make-cursor-move-next-line")
cursor above: user.emacs("evil-mc-make-cursor-move-prev-line")
cursor clear: user.emacs("evil-mc-undo-all-cursors")
cursor freeze: user.emacs("evil-mc-pause-cursors")
cursor resume: user.emacs("evil-mc-resume-cursors")

# ---- Diagnostics / Errors ----
next error: key(] d)
last error: key([ d)

error list:
    user.emacs_leader()
    key(c x)

workspace errors:
    user.emacs_leader()
    key(c X)

search diagnostics: user.emacs("consult-flymake")

peek error:
    user.emacs_leader()
    key(c d)

show hover:
    user.emacs_leader()
    key(c k)

# ---- Code navigation ----
(definition | find definition): key(g d)
(find usages | find references): key(alt-shift-/)
go back: user.emacs("xref-go-back")
go forward: user.emacs("xref-go-forward")
rename: user.emacs("eglot-rename")
quick action: user.emacs("eglot-code-actions")
next method: user.emacs("evil-forward-section-begin")
previous method: user.emacs("evil-backward-section-begin")

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
magit ediff: user.emacs("magit-ediff-dwim")
diff revision: user.emacs("ediff-revision")
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

show in [treemacs]:
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

workspace load:
    user.emacs_leader()
    key(tab l)

workspace <number_small>:
    user.emacs_leader()
    key("tab {number_small}")
