obj_mainchara.image_alpha = 1
obj_mainchara.vspeed = 0
global.interact = 0
global.phasing = 0
with (obj_solidparent)
    solid = 1
global.entrance = 2
instance_create(0, 0, obj_persistentfader)
if (x < 640)
    room_goto_previous()
else
    room_goto_next()
