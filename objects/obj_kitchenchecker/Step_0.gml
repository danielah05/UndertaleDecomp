if collision_line(0, 130, 80, 130, obj_mainchara, false, true)
	alarm[1] = 3
if collision_line(200, 138, 260, 138, obj_mainchara, false, true)
	alarm[2] = 3
if (level == 0 && bgalpha > c_black)
{
	bgalpha -= 0.2
	if (bgalpha < 0.11)
		bgalpha = c_black
	background_alpha_set(2, bgalpha)
}
if (level > 0 && bgalpha < 0x000001)
{
	bgalpha += 0.2
	if (bgalpha > 0.9)
		bgalpha = 1
	background_alpha_set(2, bgalpha)
}
if (initcheck == 0)
{
	if (obj_mainchara.y < 120)
		alarm[1] = 1
	else
		alarm[2] = 1
	initcheck = 1
}
