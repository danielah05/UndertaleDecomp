draw_set_color(c_white)
scr_setfont(fnt_main)
stringo = ""
if (FL_PapyrusFightFlirt == 1)
	stringo = "DATE POWER"
if (FL_PapyrusFightFlirt == 0)
	stringo = "FRIENDSHIP"
draw_text(x, (y - 36), string_hash_to_newline(stringo))
ossafe_fill_rectangle((x - 3), (y - 3), ((x + maxlength) + 3), (y + 27))
draw_set_color(c_black)
ossafe_fill_rectangle((x - 1), (y - 1), ((x + maxlength) + 1), (y + 25))
draw_set_color(c_gray)
ossafe_fill_rectangle(x, y, (x + maxlength), (y + 24))
siner += 1
value = (200 + (sin(((siner * ((10 * length) / maxlength)) / 10)) * (20 + (35 * (length / maxlength)))))
if (value > 255)
	value = 255
if (value < 180)
	value = 180
draw_set_color(old_make_color_hsv(160, 255, value))
ossafe_fill_rectangle(x, y, (x + length), (y + 24))
if (ideallength > length)
	length += 1
if (ideallength < length)
	length -= 1
