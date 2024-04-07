scr_depth()
if (con == 1)
{
    alarm[2] = 30
    con = 2
}
if (con == 2)
{
    obj_mainchara.y = obj_markerw.y
    global.facing = Direction.Up
    obj_mainchara.facing = Direction.Up
    global.interact = 1
}
if (con == 3)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    sprite_index = dtsprite
    obj_mainchara.cutscene = true
    obj_mainchara.phasing = 1
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_121")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    con = 3.5
}
if (con == 3.5 && instance_exists(OBJ_WRITER) == false)
{
    sprite_index = usprite
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_129")
    con = 4
    instance_create(0, 0, obj_dialoguer)
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
    sprite_index = usprite
    image_speed = 0.2
    vspeed = -2
    alarm[2] = 12
    con = 5
    obj_mainchara.vspeed = -2
    obj_mainchara.image_speed = 0.2
}
if (con == 6)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    obj_mainchara.vspeed = 0
    obj_mainchara.facing = Direction.Left
    obj_mainchara.image_speed = 0
    vspeed = 0
    image_speed = 0
    sprite_index = ltsprite
    con = 7.1
    if (FL_DogCoupleStatus != DogStatus.Killed)
    {
        obj_grillbynpc_womandog.image_speed = 0.25
        obj_grillbynpc_mandog.image_speed = 0.25
        global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_164")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        talkedto += 1
        con = 7.2
    }
}
if (con == 7.1)
{
    con = 6.2
    alarm[2] = 20
}
if (con == 7.2 && instance_exists(OBJ_WRITER) == false)
{
    if (FL_DogCoupleStatus != DogStatus.Killed)
    {
        with (obj_grillbynpc_womandog)
            image_speed = 0
        with (obj_grillbynpc_mandog)
            image_speed = 0
    }
    sprite_index = rsprite
    image_speed = 0.2
    hspeed = 3
    alarm[2] = 11
    con = 8
    obj_mainchara.hspeed = 1
    obj_mainchara.image_speed = 0.2
}
if (con == 9)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    hspeed = 0
    obj_mainchara.hspeed = 0
    obj_mainchara.facing = Direction.Right
    obj_mainchara.image_speed = 0
    image_speed = 0
    sprite_index = rtsprite
    obj_grillbynpc_foodmonster.image_speed = 0.25
    obj_grillbynpc_hotandbothered.image_speed = 0.25
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_208")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    talkedto += 1
    con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    obj_grillbynpc_foodmonster.image_speed = 0
    obj_grillbynpc_hotandbothered.image_speed = 0
    sprite_index = usprite
    obj_mainchara.facing = Direction.Up
    global.facing = Direction.Up
    image_speed = 0.2
    vspeed = -2
    alarm[2] = 26
    con = 11
    obj_mainchara.vspeed = -3
    obj_mainchara.image_speed = 0.2
}
if (con == 12)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    vspeed = 0
    obj_mainchara.vspeed = 0
    obj_mainchara.facing = Direction.Left
    global.facing = Direction.Left
    image_index = 0
    obj_mainchara.image_speed = 0
    image_speed = 0
    sprite_index = ltsprite
    obj_townnpc_weirdfish.image_speed = 0.2
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_245")
    scr_sansface(1, 0)
    global.msg[2] = scr_gettext("obj_grillbynpc_sansdate_247")
    global.msg[3] = scr_gettext("obj_grillbynpc_sansdate_248")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    talkedto += 1
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == false)
{
    obj_townnpc_weirdfish.image_speed = 0.5
    obj_grillbynpc_hot2.image_speed = 0.5
    obj_grillbynpc_foodmonster.image_speed = 0.5
    with (obj_grillbynpc_womandog)
        image_speed = 0.5
    with (obj_grillbynpc_mandog)
        image_speed = 0.5
    with (obj_grillbynpc_doggo)
        image_speed = 0.5
    obj_grillbynpc_hotandbothered.image_speed = 0.5
    caster_play(rimshot, 1, 1)
    sprite_index = spr_sans_shrug2
    alarm[2] = 44
    con = 14
}
if (con == 15)
{
    con = 16
    obj_townnpc_weirdfish.image_speed = 0
    obj_grillbynpc_hot2.image_speed = 0
    obj_grillbynpc_foodmonster.image_speed = 0
    with (obj_grillbynpc_womandog)
        image_speed = 0
    with (obj_grillbynpc_mandog)
        image_speed = 0
    with (obj_grillbynpc_doggo)
        image_speed = 0
    obj_grillbynpc_hotandbothered.image_speed = 0
    with (obj_readablesolid)
        image_index = 0
    sprite_index = ltsprite
    image_index = 0
    obj_mainchara.facing = Direction.Right
    global.facing = Direction.Right
    global.facechoice = 3
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_286")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
    con = 17.1
    global.phasing = 1
    global.facing = Direction.Up
    obj_mainchara.image_speed = 0.25
    image_speed = 0.25
    sprite_index = usprite
    vspeed = -1
    x += 2
    obj_mainchara.vspeed = -1
    if (obj_mainchara.x != 177)
        obj_mainchara.x = 177
}
if (con == 17.1)
{
    if (y <= 75)
    {
        vspeed = 0
        image_speed = 0
        sprite_index = spr_sans_stool_u
        y = 74
    }
    if (obj_mainchara.y <= 73)
    {
        obj_mainchara.y = 73
        obj_mainchara.vspeed = 0
        con = 20
    }
}
if (con == 20 && instance_exists(OBJ_WRITER) == false)
{
    caster_pause(global.currentsong)
    caster_play(whoopee, 1, 1)
    alarm[2] = 60
    con = 21
}
if (con == 22)
{
    caster_stop(whoopee)
    caster_resume(global.currentsong)
    global.faceemotion = 1
    global.msc = 570
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    con = 23
}
if (con == 23 && instance_exists(OBJ_WRITER) == false)
{
    sprite_index = spr_sans_stoolcomb
    image_speed = 0.1
    grillby = obj_grillbynpc_grillby
    grillby.sprite_index = spr_grillby_l
    grillby.image_speed = 0.25
    grillby.depth = 200000
    grillby.hspeed = -3
    con = 24
    alarm[2] = 37
}
if (con == 25)
{
    grillby.hspeed = 0
    grillby.sprite_index = spr_grillby_u
    grillby.vspeed = -2
    con = 26
    alarm[2] = 15
}
if (con == 27)
{
    grillby.vspeed = 0
    grillby.visible = false
    snd_play(snd_chug)
    con = 28
    alarm[2] = 90
}
if (con == 29)
{
    image_index = 0
    image_speed = 0
    sprite_index = spr_sans_stool_l
    global.msc = 572
    instance_create(0, 0, obj_dialoguer)
    con = 30
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
    grillby.visible = true
    grillby.vspeed = 2
    grillby.sprite_index = spr_grillby_d
    con = 32
    alarm[2] = 15
}
if (con == 33)
{
    grillby.sprite_index = spr_grillby_r
    con = 34
    alarm[2] = 47
    grillby.vspeed = 0
    grillby.hspeed = 3
}
if (con == 35)
{
    grillby.image_speed = 0
    grillby.sprite_index = spr_grillby_d
    sprite_index = spr_sans_stool_u
    if (FL_GrillbysMealChoice == Choices.Fries)
        foodimg = spr_sansfries
    if (FL_GrillbysMealChoice == Choices.Burger)
        foodimg = spr_sansburger
    food1 = scr_marker(192, 72, foodimg)
    food2 = scr_marker(208, 72, foodimg)
    food1.depth = 190000
    food2.depth = 190000
    con = 36
    alarm[2] = 45
    grillby.hspeed = 0
}
if (con == 37)
{
    grillby.image_speed = 0.25
    grillby.sprite_index = spr_grillby_l
    grillby.hspeed = -3
    alarm[2] = 12
    con = 38
}
if (con == 39)
{
    grillby.sprite_index = spr_npc_grillby
    with (grillby)
        scr_depth()
    grillby.hspeed = 0
    grillby.image_speed = 0.25
    global.msc = 574
    instance_create(0, 0, obj_dialoguer)
    con = 40
}
if (con == 40 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno > 0)
    {
        sprite_index = spr_sans_stool_chup
        image_speed = 0
        image_index = 0
    }
}
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
    con = 41.5
    if (burg == 2)
    {
        drink = 0
        con = 40.1
    }
}
if (con == 40.1)
{
    if (image_index < 8)
    {
        image_index += 1
        drink += 1
        if (drink == 1 || drink == 3 || drink == 5 || drink == 7)
            snd_play(snd_swallow)
        con = 39.2
        alarm[2] = 5
    }
    else
    {
        image_index = 9
        con = 40.3
        alarm[2] = 40
    }
}
if (con == 40.2)
    con = 40.1
if (con == 41.3)
{
    con = 43
    sprite_index = usprite
}
if (con == 41.5)
{
    sprite_index = spr_sans_stool_l
    global.typer = 5
    global.msc = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_521")
    global.msg[1] = scr_gettext("obj_grillbynpc_sansdate_522")
    instance_create(0, 0, obj_dialoguer)
    con = 41.6
}
if (con == 41.6 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
    {
        food1.image_index = 1
        con = 42
    }
}
if (con == 42 && instance_exists(OBJ_WRITER) == false)
{
    if (burg < 2)
    {
        global.facechoice = 3
        global.typer = 17
        global.msc = 0
        global.faceemotion = 1
        global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_545")
        global.msg[1] = scr_gettext("obj_grillbynpc_sansdate_546")
        global.msg[2] = scr_gettext("obj_grillbynpc_sansdate_547")
        instance_create(0, 0, obj_dialoguer)
    }
    con = 43
}
if (con == 43 && instance_exists(OBJ_WRITER) == true)
{
    if (OBJ_WRITER.stringno == 2)
    {
        if (food1.x > (food1.xstart - 16))
            food1.x -= 2
        if (food2.x > (food2.xstart - 16))
            food2.x -= 2
    }
}
if (con == 43 && instance_exists(OBJ_WRITER) == false)
{
    sprite_index = spr_sans_stool_buttscratch
    image_speed = 0.2
    alarm[2] = 90
    con = 44
}
if (con == 45)
{
    image_speed = 0
    image_index = 0
    sprite_index = spr_sans_stool_l
    global.msc = 0
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_577")
    global.msg[1] = scr_gettext("obj_grillbynpc_sansdate_578")
    global.msg[2] = scr_gettext("obj_grillbynpc_sansdate_579")
    global.msg[3] = scr_gettext("obj_grillbynpc_sansdate_580")
    global.msg[4] = scr_gettext("obj_grillbynpc_sansdate_581")
    global.msg[5] = scr_gettext("obj_grillbynpc_sansdate_582")
    global.msg[6] = scr_gettext("obj_grillbynpc_sansdate_583")
    global.msg[7] = scr_gettext("obj_grillbynpc_sansdate_584")
    instance_create(0, 0, obj_dialoguer)
    con = 46
}
if (con == 46 && instance_exists(OBJ_WRITER) == false)
{
    sprite_index = spr_sans_stool_u
    alarm[2] = 108
    con = 47
    curvol = caster_get_volume(global.currentsong)
    origvol = curvol
}
if (con == 47)
{
    curvol -= 0.01
    caster_set_volume(global.currentsong, curvol)
    if (curvol < 0.02)
    {
        curvol = 0
        caster_pause(global.currentsong)
    }
}
if (con == 48)
{
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_609")
    con = 49
    instance_create(0, 0, obj_dialoguer)
}
if (con == 49 && instance_exists(OBJ_WRITER) == false)
{
    con = 50
    alarm[2] = 30
}
if (con == 51)
{
    grillby.depth = 200000
    grillby.image_speed = 0
    snd_play(snd_noise)
    dark = instance_create(0, 0, obj_npc_marker)
    dark.visible = true
    dark.depth = 20
    dark.sprite_index = spr_grillbyshadow
    dark.image_alpha = 0.8
    con = 52
    alarm[2] = 60
}
if (con == 53)
{
    mystvol = 0.4
    caster_loop(mystery, 1, 0.4)
    global.msc = 576
    global.faceemotion = 0
    instance_create(0, 0, obj_dialoguer)
    con = 54
}
if (con == 54 && instance_exists(OBJ_WRITER) == false)
{
    caster_resume(global.currentsong)
    grillby.image_speed = 0.25
    con = 55
}
if (con == 55)
{
    dark.image_alpha -= 0.02
    if (dark.image_alpha < 0.03)
        dark.image_alpha = 0
    curvol += 0.01
    mystvol -= 0.02
    if (mystvol < 0.02)
        mystvol = 0
    caster_set_volume(mystery, mystvol)
    if (curvol > origvol)
    {
        curvol = origvol
        con = 56
        caster_stop(mystery)
        with (dark)
            instance_destroy()
    }
    caster_set_volume(global.currentsong, curvol)
}
if (con == 56)
{
    y += 10
    sprite_index = dsprite
    con = 57
    alarm[2] = 30
}
if (con == 58)
{
    global.facing = Direction.Down
    obj_mainchara.facing = Direction.Down
    con = 59
}
if (con == 59 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_683")
    global.msg[1] = scr_gettext("obj_grillbynpc_sansdate_684")
    con = 60
    instance_create(0, 0, obj_dialoguer)
}
if (con == 60 && instance_exists(OBJ_WRITER) == false)
{
    con = 61
    alarm[2] = 30
}
if (con == 62)
{
    sprite_index = utsprite
    global.msc = 578
    instance_create(0, 0, obj_dialoguer)
    con = 63
}
if (con == 63 && instance_exists(OBJ_WRITER) == false)
{
    sprite_index = dsprite
    image_index = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_708")
    global.msg[1] = scr_gettext("obj_grillbynpc_sansdate_709")
    con = 64
    instance_create(0, 0, obj_dialoguer)
}
if (con == 64 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(whoopee)
    caster_free(mystery)
    caster_free(rimshot)
    vspeed = 2
    image_speed = 0.25
    con = 66
    alarm[2] = 50
}
if (con == 67)
{
    vspeed = 0
    sprite_index = lsprite
    hspeed = -2
    con = 68
    alarm[2] = 20
}
if (con == 69)
{
    image_speed = 0
    vspeed = 0
    sprite_index = dsprite
    hspeed = 0
    con = 69.1
    alarm[2] = 20
}
if (con == 70.1)
{
    sprite_index = usprite
    global.msg[0] = scr_gettext("obj_grillbynpc_sansdate_751")
    global.msg[1] = scr_gettext("obj_grillbynpc_sansdate_752")
    gege = instance_create(0, 0, obj_dialoguer)
    gege.side = 0
    con = 70.2
}
if (con == 70.2 && instance_exists(OBJ_WRITER) == false)
{
    image_speed = 0.25
    vspeed = 2
    sprite_index = dsprite
    con = 70
    alarm[2] = 20
}
if (con == 71)
{
    global.phasing = 1
    FL_SansDated = 2
    obj_mainchara.vspeed = 1
    obj_mainchara.image_speed = 0.25
    con = 72
    alarm[2] = 30
}
if (con == 73)
{
    with (obj_readablesolid)
        sansmode = 1
    obj_mainchara.image_speed = 0
    obj_mainchara.vspeed = 0
    global.phasing = 0
    global.interact = 0
    instance_destroy()
}
