mode: all
os: mac
-
voicing start:
	speech.disable()
    key("super-f1")
voicing stop:
	speech.enable()
	key("alt-space")
voicing cancel:
	key("alt-f12")
	speech.enable()
voicing assistant:
	speech.disable()
    key("super-f2")