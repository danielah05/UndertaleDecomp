myinteract = 0
x += sprite_width
mychip = instance_create((x - 6), y, obj_npc_marker)
mychip.image_index = 1
mychip.depth = (depth + 1)
mychip.sprite_index = spr_chipdoor_chippart
mychip.image_speed = 0
mychip.visible = true
image_xscale = -1
image_speed = 0.2
if (FL_CompletedShootPuzzle2 == 1 && room == room_fire7)
	sprite_index = spr_chipdoor_green
if (FL_CompletedShootPuzzle4 == 1 && room == room_fire_walkandbranch2)
	sprite_index = spr_chipdoor_green
did = 0
if (global.plot > 132 && room == room_fire7)
	did = 1
if (global.plot > 163 && room == room_fire_walkandbranch2)
	did = 1
if (did == 1)
	x += 20
