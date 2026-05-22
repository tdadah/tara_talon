app: emacs
tag: user.doom
user.emacs_mode: /markdown/
-
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
