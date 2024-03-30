if (con == 1)
{
    global.facechoice = 0
    global.typer = 5
    global.msc = 0
    if (FL_MonsterKidUmbrellaStatus == MonsterKidUmbrellaStatus.TalkDisposedOfUmbrella)
        global.msg[0] = scr_gettext("obj_monsterkidtrigger3_134")
    if (FL_MonsterKidUmbrellaStatus == MonsterKidUmbrellaStatus.TalkGotUmbrella)
    {
        if (FL_HaveUmbrella == 0)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_140")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_141")
            FL_MonsterKidUmbrellaStatus = MonsterKidUmbrellaStatus.TalkDisposedOfUmbrella
        }
        if (FL_HaveUmbrella == 1)
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_146")
    }
    if (FL_MonsterKidUmbrellaStatus == MonsterKidUmbrellaStatus.MeetWithoutUmbrella)
    {
        if (FL_HaveUmbrella == 0)
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_154")
        if (FL_HaveUmbrella == 1)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_158")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_159")
            FL_MonsterKidUmbrellaStatus = MonsterKidUmbrellaStatus.TalkGotUmbrella
        }
    }
    if (FL_MonsterKidUmbrellaStatus == MonsterKidUmbrellaStatus.Unset)
    {
        if (FL_HaveUmbrella == 1)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_167")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_168")
            FL_MonsterKidUmbrellaStatus = MonsterKidUmbrellaStatus.TalkGotUmbrella
        }
        if (FL_HaveUmbrella == 0)
        {
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_173")
            global.msg[1] = scr_gettext("obj_monsterkidtrigger3_174")
            FL_MonsterKidUmbrellaStatus = MonsterKidUmbrellaStatus.MeetWithoutUmbrella
        }
    }
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    with (mkid)
    {
        follow = 1
        sprite_index = dsprite
    }
    global.interact = 1
    con = 3
    alarm[4] = 30
}
if (con == 4)
{
    if instance_exists(mkid)
    {
        if (mkid.follow == 3)
        {
            global.msc = 0
            with (mkid)
                sprite_index = rtsprite
            with (mkid)
                image_speed = 0.25
            global.msg[0] = scr_gettext("obj_monsterkidtrigger3_201")
            global.typer = 5
            global.interact = 1
            instance_create(0, 0, obj_dialoguer)
            con = 5
        }
    }
}
if (instance_exists(OBJ_WRITER) == false && con == 5)
{
    con = 6
    trophy_unlock("rain")
    global.interact = 0
    with (mkid)
        sprite_index = rsprite
    x = 60
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    con = 8
    mkid.follow = 0
    mkid.hspeed = 8
    mkid.sprite_index = mkid.rsprite
    mkid.image_speed = 0.5
    alarm[4] = 30
}
if (con == 9)
{
    with (mkid)
        instance_destroy()
    global.interact = 0
    t = instance_create(xstart, ystart, obj_monsterkidtrigger3)
    t.numero = 2
    instance_destroy()
}
