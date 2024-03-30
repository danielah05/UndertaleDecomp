con = 1
if (global.plot > 193)
{
    instance_destroy()
    return;
}
if (global.plot >= 192)
{
    sl = instance_create(140, 840, obj_solidwide)
    sl2 = instance_create(145, 710, obj_solidwide)
    brokemett = scr_marker(140, 700, spr_mettaton_shattered)
    with (brokemett)
        scr_depth()
    if (FL_KilledMettaton == 0)
    {
        brokemett.sprite_index = spr_mett_o_upperbody_light
        brokemett.x += 6
        brokemett.y -= 3
    }
    ii = instance_create(140, 700, obj_readable_room1)
    ii = instance_create(160, 700, obj_readable_room1)
    al2 = instance_create(150, 710, obj_alphys_npc)
    al2.sprite_index = al2.utsprite
    al2.fun = true
    con = 587458478547
}
else
{
    sl = instance_create(140, 840, obj_solidwide)
    brokemett = scr_marker(140, 700, spr_mettaton_shattered)
    with (brokemett)
        scr_depth()
    if (FL_KilledMettaton == 0)
    {
        brokemett.sprite_index = spr_mett_o_upperbody_light
        brokemett.x += 6
        brokemett.y -= 3
    }
    ii = instance_create(140, 700, obj_readable_room1)
    ii = instance_create(160, 700, obj_readable_room1)
    sl2 = instance_create(145, 710, obj_solidwide)
    obj_mainchara.x = 150
    obj_mainchara.y = 750
    global.facing = Direction.Up
    global.interact = 1
    obj_mainchara.cutscene = true
    view_target_set(0, obj_mainchara)
}
x_maroon = merge_color(c_black, c_maroon, 0.35)
