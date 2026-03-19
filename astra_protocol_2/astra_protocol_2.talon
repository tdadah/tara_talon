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
# unpause == continue
unpause:
    insert("unpause")
    key("enter")

self destruct:
    insert("destruct")
    key("enter")

shutdown:
    insert("shutdown")
    key("enter")

save:
    insert("save")
    key("enter")

save aliases:
    insert("save aliases")
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

reverse tractor [polarity]: 
    insert("reverse tractor polarity")
    key("enter")

set autopilot engines <user.number_string>:
    insert("set autopilot engines ")
    insert(number_string)
    key("enter")

set autopilot thrusters <user.number_string>:
    insert("set autopilot thrusters ")
    insert(number_string)
    key("enter")

set autopilot rudder <user.number_string>:
    insert("set autopilot rudder ")
    insert(number_string)
    key("enter")

set bearing <user.number_string>:
    insert("set bearing ")
    insert(number_string)
    key("enter")

set engine <user.number_string>:
    insert("set engine ")
    insert(number_string)
    key("enter")

set fighter mode closest:
    insert("set fighter mode closest")
    key("enter")

set fighter mode closest <user.number_string>:
    insert("set fighter mode closest ")
    insert(number_string)
    key("enter")

set fighter mode fighters:
    insert("set fighter mode fighters")
    key("enter")

set fighter mode fighters <user.number_string>:
    insert("set fighter mode fighters ")
    insert(number_string)
    key("enter")

set fighter mode idle:
    insert("set fighter mode idle")
    key("enter")

set fighter mode idle <user.number_string>:
    insert("set fighter mode idle ")
    insert(number_string)
    key("enter")

set fighter mode ships:
    insert("set fighter mode ships")
    key("enter")

set fighter mode ships <user.number_string>:
    insert("set fighter mode ships ")
    insert(number_string)
    key("enter")

set fighter mode target:
    insert("set fighter mode target")
    key("enter")

set fighter mode target <user.number_string>:
    insert("set fighter mode target ")
    insert(number_string)
    key("enter")

set laser mode asteroids:
    insert("set laser mode target")
    key("enter")

set laser mode closest:
    insert("set laser mode closest")
    key("enter")

set laser mode fighters:
    insert("set laser mode fighters")
    key("enter")

set laser mode lifeforms:
    insert("set laser mode lifeforms")
    key("enter")

set laser mode missiles:
    insert("set laser mode missiles")
    key("enter")

set laser mode target:
    insert("set laser mode target")
    key("enter")

set lasers <user.number_string>:
    insert("set lasers ")
    insert(number_string)
    key("enter")

set radio <user.number_string>:
    insert("set radio ")
    insert(number_string)
    key("enter")

set rudder <user.number_string>:
    insert("set rudder ")
    insert(number_string)
    key("enter")

set shields <user.number_string>:
    insert("set shields ")
    insert(number_string)
    key("enter")

# Specifying a positive value will provide a starboard translation, whilst a
negative value will provide a port translation.
set thrusters <user.number_string>:
    insert("set thrusters ")
    insert(number_string)
    key("enter")

stabilize [all]:
    insert("stabilize")
    key("enter")

stabilize [all]:
    insert("stabilize")
    key("enter")

stabilize position:
    insert("stabilize position")
    key("enter")

stabilize rotation:
    insert("stabilize rotation")
    key("enter")

target asteroid:
    insert("target asteroid")
    key("enter")

target clear:
    insert("target clear")
    key("enter")

target closest:
    insert("target closest")
    key("enter")

target collider:
    insert("target collider")
    key("enter")

target fighter:
    insert("target fighter")
    key("enter")

target lifeforms:
    insert("target lifeforms")
    key("enter")

target planet:
    insert("target planet")
    key("enter")

target ship:
    insert("target ship")
    key("enter")

target station:
    insert("target station")
    key("enter")

umbilical angle starboard <user.number_string>:
    insert("umbilical angle starboard ")
    insert(number_string)
    key("enter")

umbilical angle port <user.number_string>:
    insert("umbilical angle port ")
    insert(number_string)
    key("enter")

umbilical extend starboard:
    insert("umbilical extend starboard ")
    key("enter")

umbilical extend port:
    insert("umbilical extend port ")
    key("enter")

umbilical lock starboard:
    insert("umbilical lock starboard ")
    key("enter")

umbilical lock port:
    insert("umbilical lock port ")
    key("enter")

umbilical retract starboard:
    insert("umbilical retract starboard ")
    key("enter")

umbilical retract port:
    insert("umbilical retract port ")
    key("enter")

umbilical stop starboard:
    insert("umbilical stop starboard ")
    key("enter")

umbilical stop port:
    insert("umbilical stop port ")
    key("enter")

umbilical unlock starboard:
    insert("umbilical unlock starboard ")
    key("enter")

umbilical lock port:
    insert("umbilical unlock port ")
    key("enter")

# unload all missiles
unload [all]:
    insert("unload")
    key("enter")

unload forward [all]:
    insert("unload forward")
    key("enter")

unload forward <user.number_string>:
    insert("unload forward ")
    insert(number_string)
    key("enter")

unload starboard [all]:
    insert("unload starboard")
    key("enter")

unload starboard <user.number_string>:
    insert("unload starboard ")
    insert(number_string)
    key("enter")

unload port [all]:
    insert("unload port")
    key("enter")

unload port <user.number_string>:
    insert("unload port ")
    insert(number_string)
    key("enter")

