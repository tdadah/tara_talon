os: windows
app: astra protocol 2
-

settings():
    key_wait = 32
    key_hold = 32

help:
    insert("help")
    key("enter")
settings:
    insert("settings")
    key("enter")
next: key("right")
previous: key("left")
pause:
    insert("pause")
    key("enter")
(continue | resume):
    insert("continue")
    key("enter")
[self] destruct:
    insert("destruct")
    key("enter")
shutdown:
    insert("shutdown")
    key("enter")
save:
    insert("save")
    key("enter")
target <user.text>:
    modified = "target " + text
    insert(modified)
    key("enter")
scan:
    insert("scan")
    key("enter")
scan spacecraft:
    insert("scan spacecraft")
    key("enter")
enable <user.text>:
    modified = "enable " + text
    insert(modified)
    key("enter")
launch fighters:
    insert("launch fighters")
    key("enter")
launch probe:
    insert("launch probe")
    key("enter")
long range scan:
    insert("long")
    key("enter")
plot route target:
    insert("plot")
    key("enter")

manual override: key("f12")

helm: key("f1")
# only in manual override mode 
# increase [primary] engine [output]: key("plus")
# decrease [primary] engine [output]: key("minus")
# increase counter clockwise rotational engine [output]: key("left")
# increased clockwise rotational engine [output]: key("right")

engineering: key("f2")

science: key("f3")
# The following only work within the SCIENCE module
scan target: key("f9")

ordnance: key("f4")

navigation: key("f5")
# The following only work within the NAVIGATION module
( toggle autopilot | autopilot ( off | on )): key("f9")
[display] star chart:
    insert("display starchart")
    key("enter")
toggle [object] name visibility: key("space")
cycle highlighted object: key("tab")


operations: key("f6")
# The following only work within OPERATIONS module
log: 
    insert("log")
    key("enter")
# The following only work within LOG sub-module of OPERATIONS module
edit log: key("f9")
cancel log: key("f10")
save log: key("f11")
read log: key("f12")

[display] transmissions:
    insert("display transmission")
    key("enter")

[display] docking ( hood | hud ):
    insert("display docking hud")
    key("enter")

[display] ( details | scientific readout ):
    insert("display details")
    key("enter")

# The following work within the SCIENCE and NAVIGATION modules
zoom in: key("f10")
zoom out: key("f11")


