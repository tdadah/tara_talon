os: windows
app: astra protocol 2
-

science: key("f3")

launch probe:
    insert("launch probe")
    key("enter")

# The following only work within the SCIENCE module
scan target: key("f9")

[display] ( details | scientific readout ):
    insert("display details")
    key("enter")

zoom in: key("f10")

zoom out: key("f11")

recenter:
	insert("recentre")
	key("enter")

set zoom <user.number_string>:
    insert("set zoom ")
    insert(number_string)
    key("enter")

# default zoom in 1%
zoom in:
	insert("zoom in")
	key("enter")

zoom in <user.number_string> [percent]:
	insert("zoom in ")
    insert(number_string)
	key("enter")

zoom out:
	insert("zoom out")
	key("enter")

zoom out <user.number_string> [percent]:
	insert("zoom out ")
    insert(number_string)
	key("enter")