myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sans_prefinaldate_127")
if (FL_SansDated2 == 0)
    global.msc = 760
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
