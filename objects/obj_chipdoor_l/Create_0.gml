myinteract = 0
mychip = instance_create((x + sprite_width), y, obj_npc_marker)
mychip.image_index = 0
mychip.depth = (depth + 1)
mychip.sprite_index = spr_chipdoor_chippart
mychip.image_speed = 0
mychip.visible = true
image_speed = 0.2
if (FL_CompletedShootPuzzle1 == 1 && room == room_fire7)
    sprite_index = spr_chipdoor_green
if (FL_CompletedShootPuzzle3 == 1 && room == room_fire_walkandbranch2)
    sprite_index = spr_chipdoor_green
did = 0
if (global.plot > 132 && room == room_fire7)
    did = 1
if (global.plot > 163 && room == room_fire_walkandbranch2)
    did = 1
if (did == 1)
{
    event_user(1)
    x -= 20
}
