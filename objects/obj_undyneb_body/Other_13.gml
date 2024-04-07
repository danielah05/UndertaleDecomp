melter = instance_create(x, y, obj_npc_marker)
obj_undyneboss.melter = melter
with (melter)
{
    image_speed = 0
    visible = true
    image_index = 1
    sprite_index = spr_undyneb_melt
    image_xscale = 2
    image_yscale = 2
    depth = 5
    image_alpha = 0
}
fadeout = 1
