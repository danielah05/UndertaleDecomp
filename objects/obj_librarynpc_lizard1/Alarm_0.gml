myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_librarynpc_lizard1_70")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_librarynpc_lizard1_73")
    global.msg[1] = scr_gettext("obj_librarynpc_lizard1_74")
}
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_librarynpc_lizard1_79")
    global.msg[1] = scr_gettext("obj_librarynpc_lizard1_80")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
