hspeed = 0
speedfactor = 6
choice = 1
if instance_exists(obj_purpleheart)
    choice = ceil(random(obj_purpleheart.yamt))
side = choose(0, 1)
alarm[0] = 1
visible = false
dmg = 0
