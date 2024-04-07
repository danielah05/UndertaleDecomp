if (global.mnfight == 3)
    attacked = 0
if (alarm[5] > 0)
{
    if (global.monster[0] == 1)
    {
        if (global.monsterinstance[0].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[0].alarm[5]
    }
    if (global.monster[1] == 1)
    {
        if (global.monsterinstance[1].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[1].alarm[5]
    }
    if (global.monster[2] == 1)
    {
        if (global.monsterinstance[2].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[2].alarm[5]
    }
}
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 2
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
}
if control_check_pressed(InteractButton)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
    shudder = 8
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
    global.monsterhp[myself] -= takedamage
    with (dmgwriter)
        alarm[2] = 15
    global.myfight = -1
    global.mnfight = -1
    con = 20
    alarm[4] = 45
    global.hurtanim[myself] = -1
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        pop = scr_monstersum()
        global.turntimer = 150
        global.firingrate = 10
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.5)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.8)
        if (mycommand >= 50)
        {
            gen = instance_create(x, y, obj_lavafiregen)
            gen.dmg = global.monsteratk[myself]
        }
        else
            gen = instance_create((((global.idealborder[0] + global.idealborder[1]) / 2) - 30), (global.idealborder[2] + 2), obj_vulkincloudbul)
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_mettaton_neo_449")
        attacked = 1
    }
    if (mercymod == -999999)
    {
        global.turntimer = -1
        global.mnfight = 3
    }
    global.msg[0] = scr_gettext("obj_mettaton_neo_461")
    whatiheard = -1
}
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_mettaton_neo_482")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            global.heard = 1
        }
    }
}
if (global.myfight == 4)
{
    if (global.mercyuse == false)
        scr_mercystandard()
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
    scr_mercystandard()
if (con == 21)
{
    mypart1.hspeed = -3
    con = 22
    alarm[4] = 20
}
if (con == 23)
{
    with (mypart1)
        event_user(0)
    mypart1.hspeed = 0
    with (obj_dmgwriter)
        instance_destroy()
    global.faceemotion = 6
    global.typer = 97
    global.msc = 0
    if (scr_murderlv() < 15)
    {
        global.msg[0] = scr_gettext("obj_mettaton_neo_535")
        global.msg[1] = scr_gettext("obj_mettaton_neo_536")
        global.msg[2] = scr_gettext("obj_mettaton_neo_537")
        global.msg[3] = scr_gettext("obj_mettaton_neo_538")
        global.msg[4] = scr_gettext("obj_mettaton_neo_539")
        global.msg[5] = scr_gettext("obj_mettaton_neo_540")
        global.msg[6] = scr_gettext("obj_mettaton_neo_541")
        global.msg[7] = scr_gettext("obj_mettaton_neo_542")
        global.msg[8] = scr_gettext("obj_mettaton_neo_543")
        global.msg[9] = scr_gettext("obj_mettaton_neo_544")
        global.msg[10] = scr_gettext("obj_mettaton_neo_545")
        global.msg[11] = scr_gettext("obj_mettaton_neo_546")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_mettaton_neo_550")
        global.msg[1] = scr_gettext("obj_mettaton_neo_551")
    }
    con = 24
    blc = scr_blcon_x((x + 180), (y + 20))
}
if (con == 24 && instance_exists(OBJ_WRITER) == false)
{
    explode = caster_load("music/explosion.ogg")
    mypart1.fadewhite = 1
    con = 25
    alarm[4] = 2
}
if (con == 26)
{
    FL_DisableRandomEncounters = true
    caster_play(explode, 1, 1)
    if (scr_murderlv() >= 15)
    {
        if (global.xp <= 50000)
            global.xp = 50000
        global.kills += 1
    }
    else
        global.xp += 10000
    scr_levelup()
    FL_KilledMettaton = 1
    con = 27
}
