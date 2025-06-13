fun = false
if (ossafe_file_exists("undertale.ini") && ossafe_file_exists("file0"))
{
	fun = true
	ossafe_ini_open("undertale.ini")
	tr = ini_read_real("EndF", "EndF", -1)
	if (tr >= 2)
		fun = false
}
menu = 0
menu_engage = 0
buffer = 5
if (obj_time.j_ch > 0)
{
	if (!joystick_has_pov(obj_time.j_ch))
		global.joypad_dir = 1
}
r_line = scr_gettext("joyconfig_resetted")
o_o = 0
siner = 0
r_buffer = 0
intro = 0
weather = 0
extreme2 = 0
extreme = 0
rectile = 0
harp = 0
weathermusic = 0
if (fun == true)
{
	intro = 1
	menu_engage = -1
	weather = 1
	month = current_month
	if (month == 12 || month == 1 || month == 2)
		weather = 1
	if (month == 3 || month == 4 || month == 5)
		weather = 2
	if (month == 6 || month == 7 || month == 8)
		weather = 3
	if (month == 9 || month == 10 || month == 11)
		weather = 4
}
