blcon = instance_create((x + 120), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_ripoff_papyrus_243")
if (talkt == 0)
    global.msg[0] = scr_gettext("obj_ripoff_papyrus_244")
if (talkt == 1)
    global.msg[0] = scr_gettext("obj_ripoff_papyrus_245")
if (talkt == 2)
    global.msg[0] = scr_gettext("obj_ripoff_papyrus_246")
if (talkt == 2)
    talkt = 0
if (talkt == 1)
    talkt = 2
if (talkt == 0)
    talkt = 1
global.msg[1] = scr_gettext("obj_ripoff_papyrus_277")
global.typer = 22
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
if (global.language == "ja")
    blconwd.writingxend -= 117
global.border = 5
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
