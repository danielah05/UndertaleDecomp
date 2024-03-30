myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_librarynpc_lizard2_70")
global.msg[1] = scr_gettext("obj_librarynpc_lizard2_71")
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_librarynpc_lizard2_75")
    global.msg[1] = scr_gettext("obj_librarynpc_lizard2_76")
}
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_librarynpc_lizard2_81")
    global.msg[1] = scr_gettext("obj_librarynpc_lizard2_82")
    global.msg[2] = scr_gettext("obj_librarynpc_lizard2_83")
    global.msg[3] = scr_gettext("obj_librarynpc_lizard2_84")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
