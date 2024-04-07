myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_lesserdog_71")
global.msg[1] = scr_gettext("obj_grillbynpc_lesserdog_72")
if (global.plot > 122)
    global.msg[0] = scr_gettext("obj_grillbynpc_lesserdog_76")
if (FL_TruePacifist == true)
    global.msg[0] = scr_gettext("obj_grillbynpc_lesserdog_81")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
