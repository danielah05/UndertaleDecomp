for (var i = 0; i < image_yscale; i++)
{
    for (var j = 0; j < image_xscale; j++)
        draw_sprite_ext(sprite_index, image_index, (x + (j * 20)), (y + (i * 20)), 1, 1, 0, c_white, image_alpha)
}
