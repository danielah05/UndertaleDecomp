myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_chilldrakenpc_70")
global.msg[1] = scr_gettext("obj_chilldrakenpc_71")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_chilldrakenpc_72")
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_chilldrakenpc_76")
    global.msg[1] = scr_gettext("obj_chilldrakenpc_77")
}
if (room == room_tundra8)
{
    global.msg[0] = scr_gettext("obj_chilldrakenpc_82")
    global.msg[1] = scr_gettext("obj_chilldrakenpc_83")
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_chilldrakenpc_87")
        global.msg[1] = scr_gettext("obj_chilldrakenpc_88")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
