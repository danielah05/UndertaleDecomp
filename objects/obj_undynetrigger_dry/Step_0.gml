if (con == 1)
{
    instance_create(0, 0, obj_musfadeout)
    undyne = instance_create(-40, 60, obj_undynea_actor)
    undyne.rsprite = spr_undyne_helmet_r
    undyne.dsprite = spr_undyne_helmet_d
    undyne.lsprite = spr_undyne_helmet_l
    undyne.usprite = spr_undyne_helmet_u
    undyne.sprite_index = undyne.rsprite
    undyne.hspeed = 1
    undyne.image_speed = 0.1
    con = 2
    alarm[4] = 20
}
if (con == 3)
{
    undyne.hspeed = 0
    undyne.image_index = 0
    undyne.image_speed = 0
    con = 4
    alarm[4] = 40
}
if (con == 5)
{
    walked += 1
    if (walked < 3)
    {
        con = 2
        alarm[4] = 20
        undyne.hspeed = 1
        undyne.image_speed = 0.2
    }
    else
        con = 7
}
if (con == 7)
{
    undyne.hspeed = 0
    undyne.image_speed = 0
    global.facechoice = 5
    global.faceemotion = 1
    global.typer = 37
    global.msg[0] = scr_gettext("obj_undynetrigger_dry_122")
    global.msg[1] = scr_gettext("obj_undynetrigger_dry_123")
    global.msc = 0
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 8 && instance_exists(OBJ_WRITER) == false)
{
    undyne.hspeed = 0.5
    undyne.image_speed = 0.1
    alarm[4] = 40
    con = 9
}
if (con == 10)
{
    undyne.hspeed = 0
    undyne.image_speed = 0
    undyne.image_index = 0
    alarm[4] = 60
    con = 11
}
if (con == 12)
{
    snd_play(snd_noise)
    undyne2 = instance_create(undyne.x, undyne.y, obj_undynefall)
    with (undyne)
        instance_destroy()
    con = 13
}
if (con == 13)
{
    FL_UnknownBoolean17 = false
    global.interact = 0
    global.plot = 122
    FL_UndyneStatus = UndyneStatus.SparedWithoutWater
    instance_destroy()
}
