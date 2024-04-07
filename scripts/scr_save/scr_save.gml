function scr_save()
{
	scr_saveprocess()
	filechoicebk2 = global.filechoice
	global.filechoice = 9
	scr_saveprocess()
	global.filechoice = filechoicebk2
	iniwrite = ossafe_ini_open("undertale.ini")
	ini_write_string("General", "Name", global.charname)
	ini_write_real("General", "Love", global.lv)
	ini_write_real("General", "Time", obj_time.time)
	ini_write_real("General", "Kills", global.kills)
	ini_write_real("General", "Room", room)
	ossafe_ini_close()
	ossafe_savedata_save()
}
