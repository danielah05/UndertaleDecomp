if instance_exists(obj_kitchenforcefield)
    depth = (obj_kitchenforcefield.depth + 1)
if (powered == 1)
    siner += 1
else
    siner = 0
if (image_xscale == 1)
    draw_sprite(spr_core_wallstrip_l, (siner / 6), x, y)
else
    draw_sprite(spr_core_wallstrip_r, (siner / 6), (x - 20), y)
