tile_layer_hide(999995)
FL_InBattle = false
if (global.plot > 197)
{
    instance_destroy()
    return;
}
if (global.plot == 193)
{
    instance_create(0, 0, obj_mettdestroyed_event)
    instance_destroy()
    return;
}
murder = 0
if (scr_murderlv() >= 12)
    murder = 1
FL_AnimationIndex = 6
con = 0
mett = instance_create(146, 705, obj_mettaton_actor)
mett.image_speed = 0
bl = 0
drawblack = 0
bly = 0
skip = false
sixty = scr_marker(60, 680, spr_60_680)
sixty.depth = 999995
sixty.image_alpha = 0
sixtyflash = 0
sixtyon = 0
s_siner = 0
x_maroon = merge_color(c_black, c_maroon, 0.35)
