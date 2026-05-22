app: emacs
tag: user.doom
user.emacs_mode: org-mode
-
# ---- Org editing ----
(org | todo) refile: user.emacs("org-refile")

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

# ---- Org view ----
toggle link display: user.emacs("org-toggle-link-display")
to do list: user.emacs("org-todo-list")

# ---- Org navigation (uncomment as needed) ----
# org next heading: user.emacs("org-next-visible-heading")
# org last heading: user.emacs("org-previous-visible-heading")
# org up heading: user.emacs("org-up-heading")
# org fold: user.emacs("org-cycle")
# org fold all: user.emacs("org-overview")
# org unfold all: user.emacs("org-show-all")
# org todo state: user.emacs("org-todo")
# org check: user.emacs("org-toggle-checkbox")
# org archive: user.emacs("org-archive-subtree")
