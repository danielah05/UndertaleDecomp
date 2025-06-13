mystring = " "
alarm[0] = 450
con = 0
cantype = 1
with (obj_mettattackgen)
	instance_destroy()
draw_on = 1
dotimer = 0
global.border = 0
endbuffer = 180
if ossafe_file_exists("undertale.ini")
{
	ossafe_ini_open("undertale.ini")
	essaynum = ini_read_real("MTT", "EssayNo", 0)
	ossafe_ini_close()
}
if (essaynum == 1)
	endbuffer = 150
if (essaynum == 2)
	endbuffer = 120
if (essaynum >= 3)
	endbuffer = 100
if (global.osflavor <= OSFlavors.Mac)
	keyboard_present = 1
else
	keyboard_present = 0
if (!keyboard_present)
{
	global.disable_os_pause = 1
	getstring_event_id = get_string_async(scr_gettext("mett_essay_prompt_console"), "")
	alarm[0] = -1
}
