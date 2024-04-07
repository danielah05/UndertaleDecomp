myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_darksausagenpc_72")
if (room == room_fire_core2)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_76")
    global.msg[1] = scr_gettext("obj_darksausagenpc_77")
    global.msg[2] = scr_gettext("obj_darksausagenpc_78")
}
if (room == room_fire_core3)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_83")
    global.msg[1] = scr_gettext("obj_darksausagenpc_84")
    global.msg[2] = scr_gettext("obj_darksausagenpc_85")
}
if (room == room_fire_core_freebattle)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_90")
    global.msg[1] = scr_gettext("obj_darksausagenpc_91")
}
if (room == room_fire_core_warrior)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_96")
    global.msg[1] = scr_gettext("obj_darksausagenpc_97")
}
if (room == room_fire_core_center)
{
    global.msg[0] = scr_gettext("obj_darksausagenpc_102")
    global.msg[1] = scr_gettext("obj_darksausagenpc_103")
    global.msg[2] = scr_gettext("obj_darksausagenpc_104")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
