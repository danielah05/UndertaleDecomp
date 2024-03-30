myinteract = 3
global.msc = 0
global.typer = 27
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_mettaton_npc_63")
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_mettaton_npc_69")
    if (milk == 1 && eggs == 1 && sugar == 1)
        global.msg[0] = scr_gettext("obj_mettaton_npc_77")
    if (global.plot == 134)
    {
        global.msg[0] = scr_gettext("obj_mettaton_npc_82")
        global.msg[1] = scr_gettext("obj_mettaton_npc_83")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
