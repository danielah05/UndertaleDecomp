draw_rectangle_color(x, y, (x + 100), (y + 20), c_red, c_yellow, c_green, c_red, 0)
draw_set_color(c_white)
draw_rectangle((x - 2), (y - 2), (x + 102), (y + 22), true)
scr_setfont(fnt_main)
draw_text((x - 10), (y - 38), string_hash_to_newline(scr_gettext("obj_specialgraph_56")))
draw_set_color(c_black)
ossafe_fill_rectangle((x + 100), y, ((x + 60) - (sin((siner / 10)) * 40)), (y + 20))
siner += 1
