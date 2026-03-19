app: emacs
tag: user.evil_normal
-
# ---- Navigation ----
# (single-key motions like h/j/k/l are fast to type; voice commands here
#  cover the ones that are awkward or frequently used in longer sequences)

go top:         key(g g)
go bottom:      key(G)
go [line] start: key(0)
go [line] end:  key($)
go word:        key(w)
go back [word]: key(b)
go [word] end:  key(e)

# Center current line in view
recenter: key(z z)

# ---- Editing ----
delete line:    key(d d)
delete word:    key(d w)
yank line:      key(y y)
paste [below]:  key(p)
paste above:    key(P)
undo:           key(u)
redo:           key(ctrl-r)

# ---- Search ----
search:         key(/)
search back:    key(?)
next [match]:   key(n)
prev [match]:   key(N)

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

# ---- Visual mode ----
visual [mode]:
    key(v)
    user.evil_set_insert()

visual line [mode]:
    key(V)
    user.evil_set_insert()
