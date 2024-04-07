if (ck == 0)
    siner += 6
if (ck == 1)
    siner -= 6
if (image_xscale >= 2)
    draw_set_circle_precision(8)
else
    draw_set_circle_precision(4)
for (i = 0; i < cogno; i += 1)
{
    draw_set_color(c_maroon)
    if (image_xscale < 2)
        draw_circle(((x - (0.3 * image_xscale)) + (lengthdir_x(8, (((i / cogno) * 360) + siner)) * image_xscale)), ((y - (0.3 * image_yscale)) + (lengthdir_y(8, (((i / cogno) * 360) + siner)) * image_yscale)), (2 * image_xscale), 0)
    if (image_xscale >= 2)
        draw_circle(((x - (0.4 * image_xscale)) + (lengthdir_x(8, (((i / cogno) * 360) + siner)) * image_xscale)), ((y - (0.4 * image_yscale)) + (lengthdir_y(8, (((i / cogno) * 360) + siner)) * image_yscale)), (2 * image_xscale), 0)
}
if (image_xscale < 2)
    draw_sprite_ext(sprite_index, 0, (x + offx), (y + offy), image_xscale, image_yscale, 0, c_white, 1)
if (image_xscale >= 2)
    draw_sprite_ext(spr_cogmed_e, 0, (x + offx), (y + offy), (image_xscale / 2), (image_yscale / 2), 0, c_white, 1)
