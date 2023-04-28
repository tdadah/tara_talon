os: mac
app: goland
-

save that: key(cmd-s)
definition: key(cmd-b)
rename: key(shift-f6)
if err: 
	insert("if err != nil {")
	key(enter)
function: insert("func ")
show in: key(alt-f1)
search all:
	key(shift)
	key(shift)
quick action: key(alt-enter)
recent files: key(cmd-e)
find usages: key(alt-f7)
search solution: key(cmd-shift-f)
back: key(cmd-[)
forward: key(cmd-])
insert output:
	insert("fmt.Printf(\"\\n\\nTEST: %v\\n\\n\", )")
	key(left)
file: key(cmd-shift-o)
step over: key(f8)
step into: key(f7)
continue: key(alt-cmd-r)