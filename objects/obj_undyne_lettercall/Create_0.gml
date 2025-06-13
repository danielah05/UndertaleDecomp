con = 0
d = 0
ossafe_ini_open("undertale.ini")
won = ini_read_real("General", "Won", 0)
ossafe_ini_close()
if (won < 1)
	d = 1
if (FL_UndyneDateStatus < UndyneDateStatus.LeftHouse)
	d = 1
if (global.kills > 0)
	d = 1
if (global.plot <= 198)
	d = 1
if (FL_DatedAlphys >= 8)
	d = 1
if (d == 1)
{
	con = -1
	instance_destroy()
	return;
}
image_yscale = 12
if (room == room_fire_precore)
{
	image_yscale = 1
	image_xscale = 30
}
