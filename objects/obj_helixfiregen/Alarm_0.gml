mys += mysadd
hl = instance_create(x, y, obj_sinefire_asghelix)
hl.s = mys
hl.sf = mysf
hl.sv = mysv
hl.vspeed = (5.5 + selfspeed)
hl2 = instance_create(x, y, obj_sinefire_asghelix)
hl2.s = mys
hl2.sf = mysf
hl2.sv = (-mysv)
hl2.vspeed = (5.5 + selfspeed2)
alarm[0] = 2
count += 1
if (count > 15)
    instance_destroy()
