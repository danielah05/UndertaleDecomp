myinteract = 3
global.msc = 254
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_carrybird_95")
global.msg[1] = scr_gettext("obj_carrybird_96")
mydialoguer = instance_create(0, 0, obj_dialoguer)
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_carrybird_98")
talkedto += 1
