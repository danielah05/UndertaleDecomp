global.currentroom = room
room_persistent = true
f = instance_create(0, 0, obj_fader)
f.tspeed = -0.25
room_goto(myroom)
