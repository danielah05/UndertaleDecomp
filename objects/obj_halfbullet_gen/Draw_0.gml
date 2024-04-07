if (darkness == 1)
{
    if (darkness_amount < 0.5)
        darkness_amount += 0.05
}
else if (darkness_amount > 0)
    darkness_amount -= 0.05
draw_set_alpha(darkness_amount)
draw_set_color(c_black)
draw_rectangle(-10, -10, 999, 999, false)
draw_set_alpha(1)
