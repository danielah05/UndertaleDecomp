function scr_load()
{
	filechoicebk = global.filechoice
	room_set_persistent(global.currentroom, 0)
	SCR_GAMESTART()
	global.filechoice = filechoicebk
	file = ("file" + string(global.filechoice))
	myfileid = ossafe_file_text_open_read(file)
	global.charname = ossafe_file_text_read_string(myfileid)
	ossafe_file_text_readln(myfileid)
	global.lv = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.maxhp = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.maxen = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.at = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.wstrength = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.df = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.adef = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.sp = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.xp = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.gold = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.kills = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	for (i = 0; i < InventorySize; i += 1)
	{
	    global.item[i] = ossafe_file_text_read_real(myfileid)
	    ossafe_file_text_readln(myfileid)
	    global.phone[i] = ossafe_file_text_read_real(myfileid)
	    ossafe_file_text_readln(myfileid)
	}
	global.weapon = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.armor = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	for (i = 0; i < 512; i += 1)
	{
	    global.flag[i] = ossafe_file_text_read_real(myfileid)
	    ossafe_file_text_readln(myfileid)
	}
	global.plot = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	for (i = 0; i < 3; i += 1)
	{
	    global.menuchoice[i] = ossafe_file_text_read_real(myfileid)
	    ossafe_file_text_readln(myfileid)
	}
	FL_CurrentNapstablookSong = 0
	global.currentsong = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.currentroom = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	obj_time.time = ossafe_file_text_read_real(myfileid)
	ossafe_file_text_readln(myfileid)
	global.lastsavedkills = global.kills
	global.lastsavedtime = obj_time.time
	global.lastsavedlv = global.lv
	ossafe_file_text_close(myfileid)
	global.hp = global.maxhp
	global.en = global.maxen
	scr_tempsave()
	if (global.currentroom < room_tundra_garage)
	    global.area = 0
	if (global.currentroom >= room_tundra_garage)
	    global.area = 1
	FL_PlayRainSound = false
	FL_RainSoundVolume = 0
	FL_RainDeepVolume = 0
	FL_RainSoundHandle = 0
	FL_RainDeepSoundHandle = 0
	scr_dogcheck()
	if (dogcheck == 1)
	    room_goto(global.currentroom)
}
