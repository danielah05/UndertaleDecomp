myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_spagnot_98")
global.msg[1] = scr_gettext("obj_spagnot_99")
global.msg[2] = scr_gettext("obj_spagnot_100")
global.msg[3] = scr_gettext("obj_spagnot_101")
global.msg[4] = scr_gettext("obj_spagnot_102")
global.msg[5] = scr_gettext("obj_spagnot_103")
global.msg[6] = scr_gettext("obj_spagnot_104")
global.msg[7] = scr_gettext("obj_spagnot_105")
global.msg[8] = scr_gettext("obj_spagnot_106")
if (FL_TruePacifist == true)
{
    global.msg[0] = scr_gettext("obj_spagnot_110")
    global.msg[1] = scr_gettext("obj_spagnot_111")
    global.msg[2] = scr_gettext("obj_spagnot_112")
    global.msg[3] = scr_gettext("obj_spagnot_113")
    global.msg[4] = scr_gettext("obj_spagnot_114")
    global.msg[5] = scr_gettext("obj_spagnot_115")
}
if (room == room_tundra_randoblock)
    global.msg[0] = scr_gettext("obj_spagnot_120")
if (room == room_tundra_garage)
{
    if (FL_PapyrusStatus == PapyrusStatus.Spared)
        global.msg[0] = scr_gettext("obj_spagnot_124")
    if (FL_PapyrusStatus == PapyrusStatus.DefeatedOnce)
    {
        global.msg[2] = scr_gettext("obj_spagnot_127")
        global.msg[3] = scr_gettext("obj_spagnot_128")
        global.msg[4] = scr_gettext("obj_spagnot_129")
        global.msg[5] = scr_gettext("obj_spagnot_130")
    }
    if (FL_PapyrusStatus == PapyrusStatus.DefeatedTwice)
    {
        global.msg[2] = scr_gettext("obj_spagnot_134")
        global.msg[3] = scr_gettext("obj_spagnot_135")
        global.msg[4] = scr_gettext("obj_spagnot_136")
    }
    if (FL_PapyrusStatus == PapyrusStatus.DefeatedThrice)
    {
        global.msg[2] = scr_gettext("obj_spagnot_140")
        global.msg[3] = scr_gettext("obj_spagnot_141")
        global.msg[4] = scr_gettext("obj_spagnot_142")
    }
}
if (room == room_tundra5)
{
    global.msg[0] = scr_gettext("obj_spagnot_147")
    global.msg[1] = scr_gettext("obj_spagnot_148")
}
if (room == room_fire_shootguy_1 || room == room_fire_shootguy_2)
    global.msg[0] = scr_gettext("obj_spagnot_153")
if (room == room_fire_shootguy_3 || room == room_fire_shootguy_4)
    global.msg[0] = scr_gettext("obj_spagnot_158")
if (room == room_fire_hotelfront_2)
{
    global.msg[0] = scr_gettext("obj_spagnot_163")
    global.msg[1] = scr_gettext("obj_spagnot_164")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
