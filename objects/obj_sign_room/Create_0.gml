myinteract = 0
image_xscale = 1
image_yscale = 1
image_speed = 0
if (room == room_water_mushroom)
    sprite_index = spr_magicalcrystal
if (room == room_water_farm)
    sprite_index = spr_stable
talkedto = 0
if (room == room_water_undynehouse)
    sprite_index = spr_tinychair
if (room == room_water_undyneyard)
{
    sprite_index = spr_npc_mewmew
    if (FL_MadMewMewStatus >= MadMewMewStatus.Killed)
        sprite_index = spr_npc_mewmew_shattered
    image_index = FL_MadMewMewImageIndex
}
