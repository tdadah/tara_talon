os: windows
app: astra protocol 2
-

settings():
    key_wait = 32
    key_hold = 32

manual override: key("f12")
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

launch fighters <user.number_string>:
    insert("launch fighters ")
    insert(number_string)
    key("enter")

long range scan:
    insert("long")
    key("enter")

plot route <user.number_string> comma <user.number_string>:
    insert("plot route ")
    insert(number_string)
    insert(", ")
    insert(number_string)
    key("enter")

plot route target:
    insert("plot route target")
    key("enter")

[display] transmissions:
    insert("display transmission")
    key("enter")

[display] diagnostics:
    insert("display diagnostics")
    key("enter")

display all fighter [status]:
    insert("display fighter status")
    key("enter")

fighter status <user.number_string>:
    insert("display fighter status ")
    insert(number_string)
    key("enter")

display long range scan:
    insert("display long range scan")
    key("enter")

drop chaff:
    insert("drop chaff")
    key("enter")

drop mine:
    insert("drop mine")
    key("enter")

enable autopilot:
    insert("enable autopilot")
    key("enter")

enable lasers:
    insert("enable lasers")
    key("enter")

enable radio:
    insert("enable radio")
    key("enter")

enable signal [jammers]:
    insert("enable signal jammers")
    key("enter")

enable tractor [beam]:
    insert("enable tractor beam")
    key("enter")

filter noise:
    insert("filter noise")
    key("enter")

fire all: 
    insert("fire all")
    key("enter")

fire forward [all]: 
    insert("fire forward")
    key("enter")

fire forward <user.number_string>: 
    insert("fire forward ")
    insert(number_string)
    key("enter")

fire starboard [all]: 
    insert("fire starboard")
    key("enter")

fire starboard <user.number_string>: 
    insert("fire starboard ")
    insert(number_string)
    key("enter")

fire port [all]: 
    insert("fire port")
    key("enter")

fire port <user.number_string>: 
    insert("fire port ")
    insert(number_string)
    key("enter")

follow: 
    insert("follow")
    key("enter")

follow <user.number_string> comma <user.number_string>: 
    insert("follow ")
    insert(number_string_1)
    insert(" ")
    insert(number_string_2)
    key("enter")

inject coolant <user.number_string>: 
    insert("inject coolant ")
    insert(number_string)
    key("enter")

load:
    insert("load")
    key("enter")

load aliases:
    insert("load aliases")
    key("enter")

log:
    insert("load")
    key("enter")

log <user.number_string>: 
    insert("log ")
    insert(number_string)
    key("enter")

open airlock starboard:
    insert("open airlock starboard")
    key("enter")

open airlock port:
    insert("open airlock port")
    key("enter")

recall fighters:
    insert("recall fighters")
    key("enter")

recall fighters <user.number_string>:
    insert("recall fighters ")
    insert(number_string)
    key("enter")

reload all: 
    insert("reload all")
    key("enter")

reload forward [all]: 
    insert("reload forward")
    key("enter")

reload forward <user.number_string>: 
    insert("reload forward ")
    insert(number_string)
    key("enter")

reload starboard [all]: 
    insert("reload starboard")
    key("enter")

reload starboard <user.number_string>: 
    insert("reload starboard ")
    insert(number_string)
    key("enter")

reload port [all]: 
    insert("reload port")
    key("enter")

reload port <user.number_string>: 
    insert("reload port ")
    insert(number_string)
    key("enter")

remove route: 
    insert("remove route")
    key("enter")

request dock: 
    insert("request dock")
    key("enter")

request dry dock: 
    insert("request drydock")
    key("enter")

request resupply: 
    insert("request resupply")
    key("enter")
