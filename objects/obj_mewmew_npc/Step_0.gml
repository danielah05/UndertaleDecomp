scr_depth(0, 0, 0, 0, 0)
if (myinteract == 1)
{
    if (con == 0)
    {
        global.interact = 1
        myinteract = 3
        global.msc = 965
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        talkedto += 1
    }
    else
        myinteract = 0
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == false && con == 0)
    {
        global.interact = 0
        myinteract = 0
    }
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
    global.currentroom = room_tundra_sanshouse
    scr_tempsave()
    global.currentroom = room
    con = 2
    myinteract = -1
    global.interact = 1
    global.battlegroup = 141
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    con = 8
    alarm[4] = 31
}
if (con == 9)
{
    if (FL_MadMewMewStatus == MadMewMewStatus.Killed)
        sprite_index = spr_npc_mewmew_shattered
    myinteract = 0
    global.mercy = 0
    global.interact = 1
    con = 10
    alarm[4] = 30
}
if (con == 10)
    global.interact = 1
if (con == 11)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    if (FL_MadMewMewStatus == MadMewMewStatus.Killed)
    {
        global.msg[0] = scr_gettext("obj_mewmew_npc_76")
        global.msg[1] = scr_gettext("obj_mewmew_npc_77")
        global.msg[2] = scr_gettext("obj_mewmew_npc_78")
        global.msg[3] = scr_gettext("obj_mewmew_npc_79")
        global.msg[4] = scr_gettext("obj_mewmew_npc_80")
        global.msg[5] = scr_gettext("obj_mewmew_npc_81")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_mewmew_npc_85")
        global.msg[1] = scr_gettext("obj_mewmew_npc_86")
        global.msg[2] = scr_gettext("obj_mewmew_npc_87")
        global.msg[3] = scr_gettext("obj_mewmew_npc_88")
        global.msg[4] = scr_gettext("obj_mewmew_npc_89")
        global.msg[5] = scr_gettext("obj_mewmew_npc_90")
        global.msg[6] = scr_gettext("obj_mewmew_npc_91")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    con = 12
}
if (con == 12 && (!instance_exists(OBJ_WRITER)))
{
    snd_play(snd_slidewhist)
    vspeed = -4
    con = 13
    alarm[4] = 60
}
if (con == 14)
{
    global.currentroom = room_tundra_sanshouse
    scr_tempsave()
    global.currentroom = room
    global.facing = Direction.Down
    global.interact = 0
    global.border = 0
    global.mercy = 0
    instance_destroy()
    con = 15
}
