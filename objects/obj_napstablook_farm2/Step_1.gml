scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
scr_npcdir(2)
image_alpha = 0
if instance_exists(obj_mainchara)
{
    dist = distance_to_object(obj_mainchara)
    if (dist < 60)
    {
        disto = (5 / (dist + 2))
        if (disto > 1)
            disto = 1
        image_alpha = disto
    }
}
if (con == 1)
{
    global.interact = 1
    con = 2
    tempvol = caster_get_volume(global.currentsong)
}
if (con == 2)
{
    global.interact = 1
    tempvol -= 0.02
    if (tempvol <= 0)
    {
        tempvol = 0
        con = 3
        caster_pause(global.currentsong)
    }
    caster_set_volume(global.currentsong, tempvol)
}
if (con == 3)
    global.interact = 1
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    race = caster_load("music/race.ogg")
    con = 4
    alarm[4] = 15
}
if (con == 4)
    global.interact = 1
if (con == 5)
{
    global.interact = 1
    direction = 90
    global.facing = Direction.Up
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_napstablook_farm2_270")
    instance_create((view_xview_get(0) + 60), 20, OBJ_WRITER)
    con = 6
}
if (con == 6)
    global.interact = 1
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
    bringback = 0
    caster_loop(race, 1, 1)
    global.msg[0] = scr_gettext("obj_napstablook_farm2_284")
    instance_create((view_xview_get(0) + 60), 20, OBJ_WRITER)
    defaultspeed = -0.13
    snail[0].hspeed = defaultspeed
    snail[0].image_speed = 0.25
    snail[1].hspeed = -0.18
    snail[1].image_speed = 0.25
    snail[2].hspeed = -0.17
    snail[2].image_speed = 0.25
    con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    if (control_check_pressed(InteractButton) && blcontimer <= 15)
    {
        snd_stop(snd_b)
        snd_play(snd_b)
        if (blconyes == 1)
        {
            with (blcon)
                instance_destroy()
            with (blcon2)
                instance_destroy()
        }
        blcon = instance_create(obj_mainchara.x, (obj_mainchara.y - 10), obj_cosmeticblcon)
        blcon2 = instance_create(snail[0].x, (snail[0].y - 10), obj_cosmeticblcon)
        snail[0].hspeed = 0
        encouragement += 1
        blconyes = 1
        blcontimer = (11 + random(8))
    }
    if (blcontimer <= 0 && blconyes == 1)
    {
        with (blcon)
            instance_destroy()
        with (blcon2)
            instance_destroy()
        blconyes = 0
        if (encouragement == 1 && snailsad == 0)
        {
            defaultspeed -= 0.01
            snail[0].hspeed = defaultspeed
        }
        if (encouragement == 2)
            snail[0].hspeed = defaultspeed
        if (encouragement >= 3)
        {
            defaultspeed += (0.01 * encouragement)
            snail[0].hspeed = defaultspeed
        }
        encouragement = 0
    }
    if (snail[0].hspeed > 0 || encouragement > 30)
    {
        if (snail[0].hspeed > 0 || encouragement > 90)
        {
            snail[1].hspeed = -0.4
            snail[2].hspeed = -0.44
        }
        if (snail[0].hspeed > 0 || encouragement > 70)
        {
            if (snail[0].sprite_index == spr_snailyellow_hopeless2)
                snail[0].sprite_index = spr_snailyellow_hopeless3
        }
        if (snail[0].hspeed > 0 || encouragement > 50)
        {
            if (snail[0].sprite_index == spr_snailyellow_hopeless)
            {
                snail[0].sprite_index = spr_snailyellow_hopeless2
                snailsad = 2
            }
        }
        if (snail[0].hspeed > 0 || encouragement > 30)
        {
            if (snail[0].sprite_index == spr_snailyellow)
            {
                snail[0].sprite_index = spr_snailyellow_hopeless
                snailsad = 1
            }
        }
        snail[0].hspeed = 0
    }
    blcontimer -= 1
    snailtimer -= 1
    if (snail[0].x < 490)
        won = 1
    if (snail[0].x < 480)
        con = 8
    if (snail[1].x < 480)
    {
        con = 8
        if (won == 1)
            won = 2
    }
    if (snail[2].x < 480)
    {
        con = 8
        if (won == 1)
            won = 2
    }
}
if (con == 8)
{
    caster_free(race)
    snd_play(snd_select)
    global.msg[0] = scr_gettext("obj_napstablook_farm2_374")
    instance_create((view_xview_get(0) + 60), 20, OBJ_WRITER)
    caster_resume(global.currentsong)
    global.msc = 0
    snail[0].hspeed = 0
    snail[1].hspeed = 0
    snail[2].hspeed = 0
    snail[0].image_speed = 0
    snail[1].image_speed = 0
    snail[2].image_speed = 0
    con = 9
    alarm[4] = 30
}
if (con == 10)
{
    tempvol += 0.02
    if (tempvol >= 1)
    {
        tempvol = 1
        con = 11
    }
    caster_set_volume(global.currentsong, tempvol)
}
if (con == 11)
{
    direction = 180
    global.facing = Direction.Right
    if (won == 0)
    {
        global.msg[0] = scr_gettext("obj_napstablook_farm2_402")
        global.msg[1] = scr_gettext("obj_napstablook_farm2_403")
        global.msg[2] = scr_gettext("obj_napstablook_farm2_404")
        global.msg[3] = scr_gettext("obj_napstablook_farm2_405")
        if (snailsad > 0)
        {
            global.msg[0] = scr_gettext("obj_napstablook_farm2_408")
            global.msg[1] = scr_gettext("obj_napstablook_farm2_409")
            global.msg[2] = scr_gettext("obj_napstablook_farm2_410")
        }
    }
    if (won == 1)
    {
        global.msg[0] = scr_gettext("obj_napstablook_farm2_415")
        global.msg[1] = scr_gettext("obj_napstablook_farm2_416")
        global.msg[2] = scr_gettext("obj_napstablook_farm2_417")
        global.gold += 9
    }
    if (won == 2)
    {
        global.msg[0] = scr_gettext("obj_napstablook_farm2_422")
        global.msg[1] = scr_gettext("obj_napstablook_farm2_423")
        global.msg[2] = scr_gettext("obj_napstablook_farm2_424")
        global.msg[3] = scr_gettext("obj_napstablook_farm2_426")
        global.msg[4] = scr_gettext("obj_napstablook_farm2_427")
        global.gold += 30
    }
    scr_regulartext()
    con = 12
}
if (con == 12)
    buffer = 8
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
    bringback = 1
    global.interact = 0
    con = 13
}
if (bringback == 1)
{
    there = 0
    if (snail[0].sprite_index != spr_snailyellow)
        snail[0].sprite_index = spr_snailyellow
    for (i = 0; i < 3; i += 1)
    {
        if (snail[i].x < snail[i].xstart)
        {
            snail[i].x += 4
            snail[i].image_speed = 0.334
        }
        else
        {
            snail[i].x = snail[i].xstart
            snail[i].image_speed = 0
            there += 1
        }
    }
    if (there >= 3)
        bringback = 2
}
