os: windows
app: astra protocol 2
-

helm: key("f1")
# only in manual override mode 
# increase [primary] engine [output]: key("plus")
# decrease [primary] engine [output]: key("minus")
# increase counter clockwise rotational engine [output]: key("left")
# increased clockwise rotational engine [output]: key("right")



[display] docking ( hood | hud ):
    insert("display docking hud")
    key("enter")