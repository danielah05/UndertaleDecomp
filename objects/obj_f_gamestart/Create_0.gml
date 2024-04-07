ossafe_ini_open("undertale.ini")
global.fplot = ini_read_real("FFFFF", "P", 0)
global.floss = ini_read_real("FFFFF", "D", 0)
ossafe_ini_close()
global.inbattle = false
if (global.fplot == 0)
    room_goto_next()
else
    room_goto(room_f_phrase)
