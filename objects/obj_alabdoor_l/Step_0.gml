buffer -= 1
if (myinteract == 1 && buffer > 0)
    myinteract = 0
if (myinteract == 1)
{
    if (FL_AlphysLabLocked == 1)
    {
        h = 0
        scr_itemcheck(Items.UndynesLetter)
        if (haveit == true)
            h = 1
        scr_itemcheck(Items.UndynesLetterEX)
        if (haveit == true)
            h = 1
        if (h == 0)
        {
            global.msc = 0
            global.facechoice = 0
            global.typer = 5
            global.msg[0] = scr_gettext("obj_alabdoor_l_153")
            instance_create(0, 0, obj_dialoguer)
        }
        if (h == 1)
        {
            global.msc = 825
            global.facechoice = 0
            global.typer = 5
            instance_create(0, 0, obj_dialoguer)
        }
        global.interact = 1
        myinteract = 2
    }
}
if (myinteract == 2 && instance_exists(OBJ_WRITER) == false)
{
    buffer = 4
    myinteract = 0
    global.interact = 0
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    for (i = 0; i < 9; i += 1)
    {
        if (global.item[i] == Items.UndynesLetter || global.item[i] == Items.UndynesLetterEX)
            scr_itemshift(i, 0)
    }
    global.interact = 1
    caster_stop(global.currentsong)
    chainsaw = caster_load("music/sfx_chainsaw.ogg")
    con = 2.1
    alarm[4] = 40
}
if (con == 3.1 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 47
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_alabdoor_l_207")
    global.msg[1] = scr_gettext("obj_alabdoor_l_208")
    global.msg[2] = scr_gettext("obj_alabdoor_l_209")
    global.msg[3] = scr_gettext("obj_alabdoor_l_210")
    global.msg[4] = scr_gettext("obj_alabdoor_l_211")
    global.msg[5] = scr_gettext("obj_alabdoor_l_212")
    global.msg[6] = scr_gettext("obj_alabdoor_l_213")
    global.msg[7] = scr_gettext("obj_alabdoor_l_214")
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    con = 3.2
    alarm[4] = 30
}
if (con == 2.1)
    global.interact = 1
if (con == 4.2)
{
    con = 5
    alarm[4] = 110
    caster_play(chainsaw, 0.8, 1)
}
if (con == 6)
{
    alphys = scr_marker((x + 2), (y + 35), spr_alphys_l)
    alphys.depth = (depth + 10)
    if (side == 1)
        alphys.sprite_index = spr_alphys_r
    open = 1
    con = 7
    alarm[4] = 25
}
if (con == 8)
{
    global.facechoice = 6
    global.typer = 47
    global.faceemotion = 9
    FL_AlphysExpression = 0
    global.msg[0] = scr_gettext("obj_alabdoor_l_252")
    global.msg[1] = scr_gettext("obj_alabdoor_l_253")
    global.msg[2] = scr_gettext("obj_alabdoor_l_254")
    global.msg[3] = scr_gettext("obj_alabdoor_l_255")
    global.msg[4] = scr_gettext("obj_alabdoor_l_256")
    global.msg[5] = scr_gettext("obj_alabdoor_l_257")
    global.msg[6] = scr_gettext("obj_alabdoor_l_258")
    global.msg[7] = scr_gettext("obj_alabdoor_l_259")
    global.msg[8] = scr_gettext("obj_alabdoor_l_260")
    global.msg[9] = scr_gettext("obj_alabdoor_l_261")
    global.msg[10] = scr_gettext("obj_alabdoor_l_262")
    global.msg[11] = scr_gettext("obj_alabdoor_l_263")
    global.msg[12] = scr_gettext("obj_alabdoor_l_264")
    global.msg[13] = scr_gettext("obj_alabdoor_l_265")
    global.msg[14] = scr_gettext("obj_alabdoor_l_266")
    global.msg[15] = scr_gettext("obj_alabdoor_l_267")
    global.msg[16] = scr_gettext("obj_alabdoor_l_268")
    instance_create(0, 0, obj_dialoguer)
    con = 9
}
if (con == 9 && instance_exists(OBJ_WRITER) == false)
{
    instance_create(0, 0, obj_battlerflowey)
    con = 10
}
