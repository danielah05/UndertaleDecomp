alarm[4] = 150
con = 0
flowey = -1
alarm[5] = 60
fimg = 0
global.inbattle = false
global.faceemotion = 0
ossafe_ini_open("undertale.ini")
chara = ini_read_string("General", "Name", "CHARA")
ossafe_ini_close()
scr_enable_screen_border(false)
