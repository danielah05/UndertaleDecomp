global.currentroom = room
if (room != room_water_undynehouse)
    room_persistent = true
instance_create(0, 0, obj_fader)
room_goto(room_battle)
