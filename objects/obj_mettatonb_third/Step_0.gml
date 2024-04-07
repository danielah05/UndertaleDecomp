if (global.mnfight == 3)
{
    attacked = 0
    talked = false
}
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
    if (talked == true && instance_exists(OBJ_WRITER) == false)
    {
        alarm[5] = 1
        talked = 2
    }
    if (talked == false)
    {
        attacked = 0
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
    if control_check_pressed(CancelButton)
    {
        if instance_exists(OBJ_WRITER)
            OBJ_WRITER.stringpos = string_length(OBJ_WRITER.originalstring)
    }
}
if (global.hurtanim[myself] == 1)
{
    shudder = 8
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
    with (dmgwriter)
        alarm[2] = 15
    if (global.monsterhp[myself] >= 1)
    {
        global.hurtanim[myself] = 0
        hurta = 0
        global.myfight = 0
        global.mnfight = 1
    }
    else
    {
        global.myfight = 0
        global.mnfight = 1
        killed = 1
        instance_destroy()
    }
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
        if (turns >= 5)
        {
            if (con == 0)
                con = 1
        }
        if (con != 1)
        {
            if (turns == 1)
                global.attacktype = 100
            else
                mypart1.tang = 0
            if (turns == 2)
                global.attacktype = 26
            if (turns == 3)
                global.attacktype = 27
            if (turns == 4)
                global.attacktype = 28
            if (turns > 4)
                global.attacktype = 29
            gen = instance_create(0, 0, obj_mettattackgen)
            if (turns == 1)
                gen.dark = 0
        }
        with (mypart1)
            event_user(0)
        global.msg[0] = scr_gettext("obj_mettatonb_third_523")
        attacked = 1
        alarm[7] = 20
    }
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
                global.msg[0] = scr_gettext("obj_mettatonb_third_545")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_mettatonb_third_555")
                if (FL_MettatonTurnStatus == MettatonTurnStatus.CanTurn)
                {
                    FL_MettatonTurnStatus = MettatonTurnStatus.Turned
                    global.msg[0] = scr_gettext("obj_mettatonb_third_560")
                    con = 40
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
    }
}
if (whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
    {
        vspeed = -4
        mypart1.vspeed = -4
    }
}
if (global.myfight == 4)
{
    if (global.mercyuse == false)
    {
        scr_mercystandard()
        if (mercy < 0)
            instance_destroy()
    }
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        instance_destroy()
}
if (con == 1)
{
    obj_heart.shot = 0
    global.border = 0
    snd_play(snd_phone)
    SCR_BORDERSETUP()
    con = 1.1
    alarm[4] = 20
}
if (con == 2.1)
{
    phone = instance_create(520, 260, obj_npc_marker)
    phone.sprite_index = spr_fakephone
    phone.image_speed = 0
    phone.visible = true
    phone.depth = 20
    snd_play(snd_phone)
    phone.vspeed = -2
    con = 2
    alarm[4] = 30
}
if (con == 3)
{
    phone.vspeed = 0
    snd_play(snd_phone)
    con = 5
    alarm[4] = 30
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
    shblcon = instance_create((phone.x + 10), phone.y, obj_blconsm)
    shblcon.sprite_index = spr_shockblcon2
    shake = 1
    global.typer = 49
    global.msg[0] = scr_gettext("obj_mettatonb_third_644")
    global.msg[1] = scr_gettext("obj_mettatonb_third_645")
    global.msg[2] = scr_gettext("obj_mettatonb_third_646")
    global.msg[3] = scr_gettext("obj_mettatonb_third_647")
    global.msg[4] = scr_gettext("obj_mettatonb_third_648")
    global.msg[5] = scr_gettext("obj_mettatonb_third_649")
    global.msg[6] = scr_gettext("obj_mettatonb_third_650")
    global.msg[7] = scr_gettext("obj_mettatonb_third_651")
    global.msg[8] = scr_gettext("obj_mettatonb_third_652")
    global.msg[9] = scr_gettext("obj_mettatonb_third_653")
    global.msg[10] = scr_gettext("obj_mettatonb_third_654")
    global.msg[11] = scr_gettext("obj_mettatonb_third_655")
    instance_create((phone.x - 100), (phone.y - 140), OBJ_WRITER)
    con = 6.1
}
if (con == 6.1 && instance_exists(OBJ_WRITER))
{
    if control_check_pressed(CancelButton)
    {
        if instance_exists(OBJ_WRITER)
            OBJ_WRITER.stringpos = string_length(OBJ_WRITER.originalstring)
    }
}
if (con == 6.1 && instance_exists(OBJ_WRITER) == false)
{
    con = 5.2
    alarm[4] = 20
    phone.vspeed = 5
}
if (con == 6.2)
{
    con = 7
    with (phone)
        instance_destroy()
    obj_heart.shot = 1
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_mettatonb_third_688")
    FL_MettatonTurnStatus = MettatonTurnStatus.CanTurn
    with (shblcon)
        instance_destroy()
    con = 8
    shake = 0
    global.turntimer = -1
    global.mnfight = 3
    global.myfight = -1
}
if (con > 6)
{
    if (shake == 1 && instance_exists(shblcon))
    {
        shblcon.x = (shblcon.xstart + random(2))
        shblcon.y = (shblcon.ystart + random(2))
    }
}
if (con == 11)
{
    obj_heart.movement = -1
    con = 12
    alarm[4] = 40
}
if (con == 13)
{
    caster_stop(global.batmusic)
    ctheart = instance_create((obj_heart.x + 8), (obj_heart.y + 8), obj_cutsceneheart)
    obj_heart.x = -999
    obj_heart.movement = -1
    con = 14
}
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
    global.mnfight = -1
    global.myfight = -1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_mettatonb_third_820")
    global.msg[1] = scr_gettext("obj_mettatonb_third_821")
    global.typer = 51
    scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
    con = 41
}
if (con == 41 && instance_exists(OBJ_WRITER) == false)
{
    mypart1.behind = 1
    global.msg[0] = scr_gettext("obj_mettatonb_third_831")
    global.typer = 51
    scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    mypart1.behind = 2
    snd_play(snd_item)
    con = 43
    alarm[4] = 60
}
if (con == 44)
{
    global.msg[0] = scr_gettext("obj_mettatonb_third_848")
    global.msg[1] = scr_gettext("obj_mettatonb_third_849")
    global.msg[2] = scr_gettext("obj_mettatonb_third_850")
    global.typer = 51
    scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
    con = 46
    cc = caster_load("music/computer.ogg")
    pit = 0.8
}
if (con == 46 && instance_exists(OBJ_WRITER) == false)
{
    mypart1.behind = 3
    mypart1.trueanim = 0.1
    cc = caster_loop(cc, 0.6, pit)
    con = 47
}
if (con == 47)
{
    pit += 0.013
    mypart1.trueanim += 0.04
    caster_set_pitch(cc, pit)
    if (pit > 2.8)
        con = 48
}
if (con == 48)
{
    caster_free(all)
    snd_play(snd_laz)
    wht = scr_marker(0, 0, spr_pixwht)
    wht.image_xscale = 700
    wht.image_yscale = 700
    wht.image_alpha = 0.2
    wht.depth = -9000
    con = 49
}
if (con == 49)
{
    wht.image_alpha += 0.05
    if (wht.image_alpha > 0.98)
    {
        wht.image_alpha = 1
        con = 49.1
        alarm[4] = 30
    }
}
if (con == 50.1)
{
    oyea = caster_load("music/ohyes.ogg")
    caster_play(oyea, 1, 1)
    con = 50
    alarm[4] = 60
}
if (con == 51)
{
    with (mypart1)
        visible = false
    instance_create(0, 0, obj_mett_bossintro)
    con = 52
}
if (con == 52)
{
    wht.image_alpha -= 0.05
    if (wht.image_alpha < 0.06)
    {
        with (wht)
            instance_destroy()
        con = 53
    }
}
if (con_2 > 0)
    global.turntimer = 11
if (con_2 == 1)
{
    with (OBJ_WRITER)
        instance_destroy()
    global.msc = 0
    global.msg[0] = scr_gettext("obj_mettatonb_third_943")
    global.msg[1] = scr_gettext("obj_mettatonb_third_944")
    global.typer = 51
    scr_blcon((mypart1.x - 320), (mypart1.y - 120), 1)
    con_2 = 2
}
if (con_2 == 2 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_mettatonb_third_952")
    con_2 = -1
    global.turntimer = 3
}
