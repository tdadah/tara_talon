os: windows
-

app next: key(super-t)
desktop toggle: key(super-d)
(window|windows) (setting|settings): key(super-i)
(window|windows) run: key(super-r)
(window|windows) search: key(super-s)
window left: key(super-shift-left)
window right: key(super-shift-right)
window maximize: key(super-up)
window minimize:
	key(super-down)
	sleep(100ms)
	key(super-down)
window restore: key(super-down)
window move:
	key(alt-space)
	sleep(100ms)
	key(m)
