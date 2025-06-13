scr_depth(0, 0, 0, 0, 0)
myinteract = 0
image_xscale = 1
image_yscale = 1
reeled = 0
image_speed = 0
orx = 0
if (global.plot > 100 && FL_Fun == 65 && FL_TruePacifist == false)
{
	orx = 0
	if ossafe_file_exists("undertale.ini")
	{
		ossafe_ini_open("undertale.ini")
		srx = ini_read_real("General", "fun", 0)
		var dosave = 0
		if (srx == 65)
		{
			orx = 1
			FL_Fun = 0
			ini_write_real("General", "fun", 0)
			dosave = 1
		}
		ossafe_ini_close()
		if dosave
			ossafe_savedata_save()
	}
	if (orx == 1)
		orx = choose(0, 1)
}
if (orx == 1)
	room_goto(room_soundtest)
