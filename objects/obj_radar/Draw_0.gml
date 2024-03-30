r = 40
draw_set_color(c_white)
draw_circle(x, y, (r + 2), 1)
draw_circle(x, y, (r + 3), 1)
draw_set_color(c_lime)
for (i = 0; i < 10; i += 1)
{
    draw_set_alpha(((i + 1) / 10))
    draw_line_width((x + (sin(((siner + i) / 10)) * r)), (y + (cos(((siner + i) / 10)) * r)), x, y, 3)
}
siner += 1
draw_sprite_ext(spr_dogradar, 0, (x + radardogx), (y + radardogy), 1, 1, 0, c_white, radardogalpha)
radardogalpha -= 0.05
if (radardogalpha < -0.6)
{
    radardogalpha = 1
    radardogx = (random(40) - 30)
    radardogy = (random(40) - 30)
}
