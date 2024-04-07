siner += 1
ac = (sin((siner / 60)) * 0.12)
for (s = 0; s < 50; s += 1)
{
    draw_set_color(c_white)
    ac = (sin(((s + siner) / 35)) * 0.15)
    draw_set_alpha(((0.5 + ac) - (s / 40)))
    ossafe_fill_rectangle((x + (s * 2)), (y + (s * 2)), ((x + (s * 2)) + 2), (y + 100))
}
