siner_o = 0
selected = 65
charname = ""
naming = 3
selected2 = 0
selected3 = 0
q = 0
global.to_joyconfig = 0
name = ""
iniread = ossafe_ini_open("undertale.ini")
if ini_section_exists("General")
{
	name = ini_read_string("General", "Name", "")
	love = ini_read_real("General", "Love", 0)
	time = ini_read_real("General", "Time", 0)
	kills = ini_read_real("General", "Kills", 0)
	roome = ini_read_real("General", "Room", 0)
}
hasname = 0
if (name != "")
	hasname = 1
if (hasname == 1)
	global.charname = name
ossafe_ini_close()
ossafe_ini_open("undertale.ini")
m2 = ossafe_file_exists("file0")
m3 = ini_read_real("Toriel", "TK", 0)
m4 = ini_read_real("Toriel", "TS", 0)
pd = ini_read_real("Papyrus", "PD", 0)
ud = ini_read_real("Undyne", "UD", 0)
ad = ini_read_real("Alphys", "AD", 0)
fd = ini_read_real("F7", "F7", 0)
fk = ini_read_real("Flowey", "K", 0)
truereset = ini_read_real("EndF", "EndF", 0)
ossafe_ini_close()
mlevel = 0
if (m2 > 0)
{
	if (m2 > 0)
		mlevel = 1
	if (m4 > 0)
		mlevel = 2
	if (pd > 0 && mlevel == 2)
		mlevel = 3
	if (ud > 0 && mlevel == 3)
		mlevel = 4
	if (ad > 0 && mlevel == 4)
		mlevel = 5
	if (fd > 0 && mlevel == 5)
		mlevel = 6
}
if (truereset > 0)
	mlevel = 7
if (mlevel == 0)
	menusong = mus_menu0
if (mlevel == 1)
	menusong = mus_menu1
if (mlevel == 2)
	menusong = mus_menu2
if (mlevel == 3)
	menusong = mus_menu3
if (mlevel == 4)
	menusong = mus_menu4
if (mlevel == 5)
	menusong = mus_menu5
if (mlevel == 6)
	menusong = mus_menu6
if (mlevel == 7)
	menusong = mus_menu0
if (mlevel >= 0 && mlevel <= 6)
	caster_loop(menusong, 0.6, 1)
if (mlevel == 7)
	caster_loop(menusong, 0.1, 0.1)
scr_namingscreen_setup()
if (global.osflavor >= 3 && (!ossafe_file_exists("file0")))
	ossafe_savedata_save()
