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

# ---- Editing ----
delete line:    key(d d)
delete word:    key(d w)
yank line:      key(y y)
paste [below]:  key(p)
paste above:    key(P)

# ---- Spell check ----
spell check: key(z =)

# ---- Search ----
search:         key(/)
search back:    key(?)
next [match]:   key(n)
prev [match]:   key(N)



# ---- Visual mode ----
visual [mode]:
    key(v)
    user.evil_set_insert()

visual line [mode]:
    key(V)
    user.evil_set_insert()
