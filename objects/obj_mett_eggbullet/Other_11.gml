if (col == 0)
{
    egg = instance_create(x, y, obj_failegg)
    egg.image_angle = image_angle
    egg.ang = ang
    egg.vspeed = vspeed
    egg.hspeed = hspeed
    egg.friction = 0.05
    sprite_index = spr_mett_failegg
    col = 1
}
