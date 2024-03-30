if (myinteract != 0)
{
    siner += 1
    y -= (cos((siner / 3)) * 0.6)
    image_yscale = (1 + (sin((siner / 3)) * 0.1))
    image_xscale = (1 - (sin((siner / 3)) * 0.05))
}
else
{
    siner = 0
    image_yscale = 1
    image_xscale = 1
    y = ystart
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
