if instance_exists(obj_darknesspuzzle)
    gl = obj_darknesspuzzle.glowamt
else
    gl = 0
draw_set_circle_precision(12)
if (gl > 0.1)
{
    gl2 = (gl + (sin((siner / 10)) / 6))
    image_alpha = obj_darknesspuzzle.glowamt
    draw_set_color(c_fuchsia)
    draw_set_alpha((gl2 / 3))
    draw_circle((x + 10), (y + 10), (gl2 * 15), 0)
    draw_set_alpha((gl2 / 3))
    draw_circle((x + 10), (y + 10), (gl2 * 20), 0)
    draw_set_alpha((gl2 / 3))
    draw_circle((x + 10), (y + 10), (gl2 * 25), 0)
    draw_set_alpha((gl2 / 3))
    draw_circle((x + 10), (y + 10), (gl2 * 30), 0)
}
siner += 1
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, gl)
draw_set_alpha(1)
