if (con == 1)
{
    global.facing = Direction.Right
    if instance_exists(obj_mainchara)
    {
        obj_mainchara.x = 120
        obj_mainchara.y = 160
        global.interact = 1
    }
}
if (con == 2)
{
    global.facechoice = 5
    global.faceemotion = 9
    global.msc = 0
    global.typer = 37
    global.msg[0] = scr_gettext("obj_undynedate_afterward_114")
    global.msg[1] = scr_gettext("obj_undynedate_afterward_115")
    global.msg[2] = scr_gettext("obj_undynedate_afterward_116")
    global.msg[3] = scr_gettext("obj_undynedate_afterward_117")
    global.msg[4] = scr_gettext("obj_undynedate_afterward_118")
    global.msg[5] = scr_gettext("obj_undynedate_afterward_119")
    global.msg[6] = scr_gettext("obj_undynedate_afterward_120")
    global.msg[7] = scr_gettext("obj_undynedate_afterward_121")
    global.msg[8] = scr_gettext("obj_undynedate_afterward_122")
    con = 3
    ossafe_ini_open("undertale.ini")
    won = ini_read_real("General", "Won", 0)
    ossafe_ini_close()
    d = 0
    if (won < 1)
        d = 1
    if (FL_UndyneDateStatus < UndyneDateStatus.LeftHouse)
        d = 1
    if (global.kills > 0)
        d = 1
    if (global.plot <= 198)
        d = 1
    if (FL_DatedAlphys >= 8)
        d = 1
    if (d == 0)
    {
        scr_itemget(Items.UndynesLetter)
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("obj_undynedate_afterward_140")
            global.msg[1] = scr_gettext("obj_undynedate_afterward_141")
            global.msg[2] = scr_gettext("obj_undynedate_afterward_142")
            global.msg[3] = scr_gettext("obj_undynedate_afterward_143")
            global.msg[4] = scr_gettext("obj_undynedate_afterward_144")
            global.msg[5] = scr_gettext("obj_undynedate_afterward_145")
            global.msg[6] = scr_gettext("obj_undynedate_afterward_146")
            global.msg[7] = scr_gettext("obj_undynedate_afterward_147")
            global.msg[8] = scr_gettext("obj_undynedate_afterward_148")
            global.msg[9] = scr_gettext("obj_undynedate_afterward_149")
            global.msg[10] = scr_gettext("obj_undynedate_afterward_150")
            global.msg[11] = scr_gettext("obj_undynedate_afterward_151")
            global.msg[12] = scr_gettext("obj_undynedate_afterward_152")
            global.msg[13] = scr_gettext("obj_undynedate_afterward_153")
            global.msg[14] = scr_gettext("obj_undynedate_afterward_154")
            global.msg[15] = scr_gettext("obj_undynedate_afterward_155")
            global.msg[16] = scr_gettext("obj_undynedate_afterward_156")
            scr_undface(17, 2)
            global.msg[18] = scr_gettext("obj_undynedate_afterward_158")
            global.msg[19] = scr_gettext("obj_undynedate_afterward_159")
            global.msg[20] = scr_gettext("obj_undynedate_afterward_160")
            global.msg[21] = scr_gettext("obj_undynedate_afterward_161")
            global.msg[22] = scr_gettext("obj_undynedate_afterward_162")
            global.msg[23] = scr_gettext("obj_undynedate_afterward_163")
            FL_DisableRandomEncounters = true
            FL_DatedAlphys = 9
        }
        else
        {
            global.msg[0] = scr_gettext("obj_undynedate_afterward_169")
            global.msg[1] = scr_gettext("obj_undynedate_afterward_170")
            global.msg[2] = scr_gettext("obj_undynedate_afterward_171")
            global.msg[3] = scr_gettext("obj_undynedate_afterward_172")
            global.msg[4] = scr_gettext("obj_undynedate_afterward_173")
            global.msg[5] = scr_gettext("obj_undynedate_afterward_174")
            global.msg[6] = scr_gettext("obj_undynedate_afterward_175")
            global.msg[7] = scr_gettext("obj_undynedate_afterward_176")
            global.msg[8] = scr_gettext("obj_undynedate_afterward_177")
            global.msg[9] = scr_gettext("obj_undynedate_afterward_178")
            global.msg[10] = scr_gettext("obj_undynedate_afterward_179")
            global.msg[11] = scr_gettext("obj_undynedate_afterward_180")
            global.msg[12] = scr_gettext("obj_undynedate_afterward_181")
            global.msg[13] = scr_gettext("obj_undynedate_afterward_182")
            global.msg[14] = scr_gettext("obj_undynedate_afterward_183")
            FL_DatedAlphys = 8
            FL_DisableRandomEncounters = true
        }
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    FL_AnimationIndex = 2
    undyne.vspeed = 6
    undyne.image_speed = 0.5
    undyne.sprite_index = spr_undyne_d
    con = 4
    global.facing = Direction.Down
    alarm[4] = 60
}
if (con == 5)
{
    con = 6
    global.facing = Direction.Right
    global.interact = 0
    FL_UndyneDateStatus = UndyneDateStatus.UndyneLeft
    FL_IncludeUndyneInPapyrusCalls = 1
    instance_destroy()
}
