os: windows
app: astra protocol 2
-

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