app: emacs
tag: user.doom
user.emacs_mode: /magit/
-
# ---- Navigation ----
magit next: user.emacs("magit-section-forward-sibling")
magit last: user.emacs("magit-section-backward-sibling")
magit next file: user.emacs("magit-section-forward")
magit last file: user.emacs("magit-section-backward")
magit visit file: user.emacs("magit-diff-visit-file")
magit ediff: user.emacs("magit-ediff-dwim")
magit expand: user.emacs("magit-section-toggle")

# ---- Actions ----
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

# ---- Staging ----
magit stage: user.emacs("magit-stage")
magit unstage: user.emacs("magit-unstage")
magit discard: user.emacs("magit-discard")
