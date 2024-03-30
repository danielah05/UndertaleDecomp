alarm[2] = 27
s = instance_create(((global.idealborder[0] + random(60)) - 10), 20, obj_mettstick)
s.vspeed = 3
s = instance_create((s.x + 100), 20, obj_mettstick)
s.vspeed = 3
