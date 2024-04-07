siner += 1
ac = (sin((siner / 60)) * 0.12)
for (s = 0; s < 40; s += 1)
{
    draw_set_color(c_white)
    ac = (sin(((s + siner) / 35)) * 0.17)
    draw_set_alpha(((0.7 + ac) - (s / 40)))
    ossafe_fill_rectangle(x, (y + (s * 4)), (x + 30), ((y + 4) + (s * 4)))
}
