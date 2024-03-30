sinvalue = 0
if (hspeed == 0)
{
    sinvalue += (sin((siner / 3)) * 2)
    image_angle += sinvalue
}
draw_sprite_ext(sprite_index, image_index, ((x + sinvalue) + (random((shaker * 2)) - shaker)), (y + (random((shaker * 2)) - shaker)), image_xscale, image_yscale, image_angle, c_white, 1)
draw_sprite_ext(arms, (siner / 6), (x + sinvalue), (y - (sin((siner / 4)) * 5)), image_xscale, image_yscale, image_angle, c_white, 1)
if (sineron == 1)
    siner += 1
