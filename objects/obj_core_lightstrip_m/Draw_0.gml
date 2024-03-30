if instance_exists(obj_kitchenforcefield)
    depth = (obj_kitchenforcefield.depth + 1)
if (powered == 1)
    siner += 1
else
    siner = 0
if (image_xscale >= 0)
{
    for (i = 0; i < image_xscale; i += 1)
        draw_sprite(spr_core_wallstrip_m, (siner / 6), (x + (i * 20)), y)
}
