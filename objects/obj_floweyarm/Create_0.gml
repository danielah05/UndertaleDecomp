acon = 0
acon2 = 0
siner = 0
reach = 0
reach2 = 0
reach3 = 0
made = 0
siner = 0
frozen = false
desperate = 1
if (image_xscale > 0 && instance_exists(obj_flowey_master))
    obj_flowey_master.rightarm = id
if (image_xscale < 0 && instance_exists(obj_flowey_master))
    obj_flowey_master.leftarm = id
scr_floweybodysave()
