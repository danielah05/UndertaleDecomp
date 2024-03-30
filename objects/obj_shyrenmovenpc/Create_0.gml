siner = 0
image_speed = 0
if (FL_TruePacifist == false)
{
    instance_destroy()
    return;
}
hole = scr_marker((x + 12), (ystart + 50), spr_centeredhole)
hole.image_alpha = 0.9
hole.depth = 600000
