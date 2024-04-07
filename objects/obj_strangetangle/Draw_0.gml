if (active == true)
{
    draw_set_alpha(image_alpha)
    oo = 0
    for (i = 0; i < 30; i += 1)
    {
        if (oo == 0)
            draw_set_color(c_white)
        ossafe_fill_rectangle(x1[i], y1[i], (x1[i] + 16), (y1[i] + 16))
        if (oo == 0)
            oo = 1
        else
            oo = 0
    }
    draw_set_alpha(1)
}
siner += 1
w += (sin((siner / 5)) * 2)
h += (sin((siner / 5)) * 2)
