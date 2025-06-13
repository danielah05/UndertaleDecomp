sprite_index = spr_iceblock_bottom
whitepro = 0
timer = -10
d = 0
x += 3
if (FL_TruePacifist == true)
	instance_destroy()
if (scr_murderlv() >= MurderLevel.Lv7TundraKills)
	instance_destroy()
