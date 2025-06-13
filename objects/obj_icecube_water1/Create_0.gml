image_speed = 0.1
if (room == room_water1)
	path_start(path_icecube_water1, 1.5, path_action_stop, 1)
if (FL_TruePacifist == true)
	instance_destroy()
if (scr_murderlv() >= MurderLevel.Lv7TundraKills)
	instance_destroy()
