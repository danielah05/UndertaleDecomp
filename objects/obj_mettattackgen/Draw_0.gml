if (global.turntimer <= 9)
    dark = 0
if (dark == 1 && darkamt < 0.5)
    darkamt += 0.05
if (dark == 0 && darkamt > 0)
    darkamt -= 0.05
draw_set_alpha(darkamt)
draw_set_color(c_black)
ossafe_fill_rectangle(-20, -20, 999, 999)
draw_set_alpha(1)
