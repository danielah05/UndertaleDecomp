intronoise = caster_load("music/intronoise.ogg")
caster_play(intronoise, 1, 1)
alarm[0] = 600
alarm[1] = 100
d = 0
ballamount = 0
special_x = 0
drawpw = 0
pw1 = 0
pw2 = 0
pw3 = 0
pw4 = 0
if ossafe_file_exists("undertale.ini")
{
	ossafe_ini_open("undertale.ini")
	if (ini_read_real("General", "Won", 0) > 0)
		pw1 = 1
	if (ini_read_real("General", "Truth", 0) > 0)
	{
		pw1 = 1
		pw2 = 1
	}
	if (ini_read_real("EndF", "EndF", 0) >= 2)
	{
		pw1 = 1
		pw2 = 1
	}
	if (ini_read_real("reset", "reset", 0) > 0)
	{
		pw1 = 1
		pw2 = 1
	}
	if (ini_read_real("Sans", "Intro", 0) > 0)
		pw3 = 1
	if (ini_read_real("Sans", "F", 0) > 0)
		pw3 = 1
	if (ini_read_real("Sans", "SK", 0) > 0)
		pw3 = 1
	if ossafe_file_exists("system_information_963")
		pw3 = 1
	ossafe_ini_close()
}
proceed = 0
