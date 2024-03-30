number = -1
ii = caster_load("music/intronoise.ogg")
caster_play(ii, 1, 1)
alarm[5] = 150
rot = 0
phonecalls = 0
global.filechoice = 0
ossafe_ini_open("undertale.ini")
ini_write_real("FFFFF", "E", 0)
ini_write_real("FFFFF", "F", 0)
won = ini_read_real("General", "Won", 0)
ini_write_real("General", "Won", (won + 1))
ossafe_ini_close()
ossafe_savedata_save()
