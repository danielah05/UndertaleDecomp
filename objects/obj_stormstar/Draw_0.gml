xxxxx = xxxx
yyyyy = yyyy
xxxx = xxx
yyyy = yyy
xxx = xx
yyy = yy
xx = xprevious
yy = yprevious
draw_sprite_ext(sprite_index, 1, xxxxx, yyyyy, image_xscale, image_yscale, image_angle, image_blend, (image_alpha - 0.65))
draw_sprite_ext(sprite_index, 1, xxx, yyy, image_xscale, image_yscale, image_angle, image_blend, (image_alpha - 0.5))
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (big == 1)
{
    draw_set_circle_precision(16)
    draw_set_color(image_blend)
    oo += 1
    oosine = abs(sin((oo / 2.5)))
    draw_set_alpha(((0.35 + (oosine * 0.15)) - (1 - image_alpha)))
    draw_circle(x, y, (200 + (oosine * 20)), 0)
    draw_set_alpha(1)
}
if (aa > 0)
    image_angle += aa
