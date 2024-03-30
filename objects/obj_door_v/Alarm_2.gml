global.entrance = 22
instance_create(0, 0, obj_persistentfader)
if (room == room_tundra_garage)
    room_goto(room_tundra_town)
if (room == room_water_friendlyhub)
    room_goto(room_water_farm)
if (room == room_water_farm)
    room_goto(room_water_friendlyhub)
