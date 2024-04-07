myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_grillbynpc_grillby_73")
global.msg[1] = scr_gettext("obj_grillbynpc_grillby_74")
if (FL_TruePacifist == true)
    global.msg[0] = scr_gettext("obj_grillbynpc_grillby_78")
if (sansmode == 1)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_grillby_83")
    global.msg[1] = scr_gettext("obj_grillbynpc_grillby_84")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
