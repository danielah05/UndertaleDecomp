if (active == true)
{
	draw_set_color(c_white)
	scr_setfont(fnt_maintext)
	if (done == 2)
		hypefade -= 0.1
	for (i = 0; i < amt; i += 1)
	{
		draw_set_alpha((fade[i] * hypefade))
		draw_text((wherex[i] + (sin((i + (siner / 5))) * 5)), (wherey[i] + (cos((i + (siner / 5))) * 5)), string_hash_to_newline(this_phrase))
		if (fade[i] < 1)
			fade[i] += 0.2
	}
	draw_set_alpha(1)
}
siner += 1
if (done == 1 && control_check_pressed(InteractButton))
	done = 2
if (hypefade <= 0)
	instance_destroy()
