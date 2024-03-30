siner += 1
for (i = 0; i < 8; i += 1)
{
    draw_set_alpha((((sin((siner / 12)) * 0.5) + 0.5) * (1 - (i / 8))))
    draw_set_color(c_black)
    ossafe_fill_rectangle(x, ((y + 16) - (i * 5)), (x + (20 * image_xscale)), ((y + 20) - (i * 5)))
    draw_set_alpha(1)
}
