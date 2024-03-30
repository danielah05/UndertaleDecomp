myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_80")
global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_81")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_82")
if (FL_TruePacifist == true)
{
    if (FL_MonsterKidSavedStatus == MonsterKidSavedStatus.RoomExit)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_88")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_89")
        global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_90")
        global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_91")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_93")
    }
    if (FL_MonsterKidSavedStatus == MonsterKidSavedStatus.SavedByPlayer)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_97")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_98")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_100")
    }
    if (FL_MonsterKidSavedStatus == MonsterKidSavedStatus.SavedByUndyne)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_104")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_105")
        global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_106")
        global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_107")
        global.msg[4] = scr_gettext("obj_townnpc_monsterkid1_108")
        global.msg[5] = scr_gettext("obj_townnpc_monsterkid1_109")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_111")
    }
}
if (scr_murderlv() >= 7)
{
    global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_117")
    global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_118")
    global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_119")
}
if (room == room_water2)
{
    global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_122")
    global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_123")
    global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_124")
    global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_125")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_127")
    if (talkedto > 0 && con == 2)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_129")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_130")
    }
    if (con == 1 && talkedto > 0)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_132")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_133")
    }
}
if (room == room_water_waterfall4)
{
    if (talkedto == 0)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_141")
        if instance_exists(obj_monsterkidtrigger6)
            obj_monsterkidtrigger6.con = 4
    }
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_147")
    if (global.plot == 112)
    {
        if (FL_HaveUmbrella == 0)
        {
            myinteract = 0
            if instance_exists(obj_monsterkidtrigger6)
                obj_monsterkidtrigger6.con = 10
        }
        if (FL_HaveUmbrella == 1)
        {
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_161")
            mydialoguer = instance_create(0, 0, obj_dialoguer)
        }
    }
}
if (global.plot != 112)
    mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
