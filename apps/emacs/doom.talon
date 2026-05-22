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
show talon commands: user.emacs("my/talon-show-commands")
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
kill matching buffers: user.emacs("doom/kill-matching-buffers")
kill buried buffers: user.emacs("doom/kill-buried-buffers")

# ---- Doom leader key ----
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

# ---- Dired (entry points) ----
open dired:
    user.emacs_leader()
    key(o -)

dired here: user.emacs("dired-jump")

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
fold toggle: key(z a)
fold close: key(z c)
fold open: key(z o)
fold close all: key(z M)
fold open all: key(z R)

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

# ---- Git (entry points) ----
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

workspace kill session:
    user.emacs_leader()
    key(tab x)

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

# ---- Misc ----
java index: user.emacs("lsp-java-update-project-configuration")
java internal build: user.emacs("lsp-java-build-project")
lisp nuke: user.emacs("lsp-workspace-restart")
add talon command: user.emacs("my/talon-add-command")
doom quit:
    user.emacs_leader()
    key(q q)
toggle test (lenses|lens): user.emacs("lsp-jt-lens-mode")

# ---- DAP debugger ----
breakpoint toggle: user.emacs("dap-breakpoint-toggle")
breakpoint add: user.emacs("dap-breakpoint-add")
breakpoint delete [all]: user.emacs("dap-breakpoint-delete-all")
breakpoint condition: user.emacs("dap-breakpoint-condition")
breakpoint hit condition: user.emacs("dap-breakpoint-hit-condition")
breakpoint log: user.emacs("dap-breakpoint-log-message")
debug test:
    user.emacs_leader()
    key(m t d)
debug [test] class:
    user.emacs_leader()
    key(m t D)
step over: user.emacs("dap-next")
step in: user.emacs("dap-step-in")
step out: user.emacs("dap-step-out")
continue: user.emacs("dap-continue")
debug restart: user.emacs("dap-debug-restart")
debug disconnect: user.emacs("dap-disconnect")
debug eval: user.emacs("dap-eval")
debug eval point: user.emacs("dap-eval-thing-at-point")
debug hydra: user.emacs("dap-hydra")
debug switch frame: user.emacs("dap-switch-stack-frame")
debug frame up: user.emacs("dap-up-stack-frame")
debug frame down: user.emacs("dap-down-stack-frame")
agent shell here: user.emacs("my/agent-shell-here")
