global.entrance = 21
instance_create(0, 0, obj_persistentfader)
if (room == room_tundra_town)
	room_goto(room_tundra_library)
if (room == room_tundra_library)
	room_goto(room_tundra_town)
if (room == room_water13)
	room_goto(room_water12)
if (room == room_water12)
	room_goto(room_water13)
if (room == room_fire7)
	room_goto(room_fire9)
if (room == room_fire9)
	room_goto(room_fire7)
if (room == room_fire_core_center)
	room_goto(room_fire_core_top)
if (room == room_fire_core_top)
	room_goto(room_fire_core_center)
if (room == room_fire_core_branch)
	room_goto(room_fire_core_bottomright)
if (room == room_fire_core_bottomright)
	room_goto(room_fire_core_branch)
if (room == room_truelab_hall3)
	room_goto(room_truelab_fan)
if (room == room_truelab_fan)
	room_goto(room_truelab_hall3)
if (room == room_fire_core_premett)
	room_goto(room_fire_core1)
if (room == room_fire_core1)
	room_goto(room_fire_core_premett)
if (room == room_water_fakehallway)
	room_goto(room_water11)
