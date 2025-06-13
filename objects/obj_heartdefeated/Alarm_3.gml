iniwrite = ossafe_ini_open("undertale.ini")
gs = ini_read_real("General", "Gameover", 0)
ini_write_real("General", "Gameover", (gs + 1))
ossafe_ini_close()
ossafe_savedata_save()
if (gs == 0)
	msgnum = 0
if (gs > 0 && global.kills == 0)
	msgnum = (100 + floor(random(8)))
if (gs > 0)
	msgnum = (200 + floor(random(5)))
if (FL_GetDunkedOn == 1)
	msgnum = 300
event_user(1)
