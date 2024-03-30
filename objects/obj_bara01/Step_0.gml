if (global.mnfight == 3)
{
    attacked = 0
    whatiheard = -1
    with (obj_carrotstargen)
        instance_destroy()
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
    if (talked == false)
    {
        alarm[5] = 110
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
    if (global.monsterhp[myself] >= 1)
    {
        mypart1.pause = 0
        global.hurtanim[myself] = 0
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
    if (obj_uborder.y > global.idealborder[2])
        obj_heart.y = ((obj_uborder.y + obj_dborder.y) / 2)
    pop = scr_monstersum()
    if (attacked == 0 && pop == 1)
    {
        global.turntimer = 180
        if (instance_exists(obj_carrotstargen) == false)
        {
            if (mycommand >= 0 && mycommand <= 50)
            {
                global.firingrate = 25
                gen = instance_create(x, y, obj_carrotstargen)
                gen.dmg = global.monsteratk[myself]
                gen.alarm[0] = 8
            }
            else
            {
                global.firingrate = 20
                gen = instance_create(x, y, obj_carrotstargen)
                gen.dmg = global.monsteratk[myself]
                gen.alarm[1] = 8
            }
            gen.myself = myself
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_bara01_524")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_bara01_525")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_bara01_526")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_bara01_527")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_bara01_528")
        pop = scr_monstersum()
        if (pop == 1)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_bara01_535")
            if (mycommand >= 25)
                global.msg[0] = scr_gettext("obj_bara01_536")
            if (mycommand >= 50)
                global.msg[0] = scr_gettext("obj_bara01_537")
            if (mycommand >= 75)
                global.msg[0] = scr_gettext("obj_bara01_538")
        }
        if (global.monsterhp[myself] < 30)
            global.msg[0] = scr_gettext("obj_bara01_542")
        attacked = 1
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
                global.msg[0] = scr_gettext("obj_bara01_558")
                if (scr_murderlv() >= 12 && FL_SparedSpecific == 0)
                    global.msg[0] = scr_gettext("obj_bara01_561")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_bara01_571")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_bara01_581")
                if (shake == 1)
                    toldhim = 1
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
    }
}
if (toldhim == 1 && global.turntimer > 1 && global.turntimer < 5 && global.mnfight == 2 && con == 0 && scr_monstersum() == 2)
{
    global.turntimer = -1
    global.mnfight = 5
    global.border = 0
    obj_heart.x = -800
    obj_heart.movement = -1
}
if (global.mnfight == 5)
{
    if (con == 0 && toldhim == 1)
    {
        caster_pause(global.batmusic)
        con = 1
        alarm[4] = 20
    }
    if (con == 2)
    {
        blcon = instance_create(((x + blconx) + 28), (y + blcony), obj_blconsm)
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara01_615")
        global.msg[1] = scr_gettext("obj_bara01_616")
        global.msg[2] = scr_gettext("obj_bara01_617")
        global.msg[3] = scr_gettext("obj_bara01_618")
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 3
    }
    if (con == 3 && instance_exists(OBJ_WRITER) == false)
    {
        with (mypart1)
            shaker = 0
        with (blcon)
            instance_destroy()
        conmusic = caster_load("music/confession.ogg")
        caster_loop(conmusic, 0.8, 0.9)
        con = 4
        global.msc = 0
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara01_632")
        global.msg[1] = scr_gettext("obj_bara01_633")
        global.msg[2] = scr_gettext("obj_bara01_634")
        global.msg[3] = scr_gettext("obj_bara01_635")
        global.msg[4] = scr_gettext("obj_bara01_636")
        global.msg[5] = scr_gettext("obj_bara01_637")
        scr_blcon_x((blconx + 50), blcony)
    }
    if (con == 4 && instance_exists(OBJ_WRITER) == false)
    {
        caster_pause(conmusic)
        con = 5
        with (obj_bara02)
        {
            blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
            obj_bara01.blcon = blcon
            blcon.sprite_index = spr_blconsm2
            global.typer = 2
            global.msg[0] = scr_gettext("obj_bara01_650")
            global.msg[1] = scr_gettext("obj_bara01_651")
            writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        }
    }
    if (con == 5 && instance_exists(OBJ_WRITER) == false)
    {
        with (mypart1)
            event_user(2)
        with (blcon)
            instance_destroy()
        blcon = instance_create(((x + blconx) + 28), (y + blcony), obj_blconsm)
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara01_663")
        global.msg[1] = scr_gettext("obj_bara01_664")
        global.msg[2] = scr_gettext("obj_bara01_665")
        if (FL_CalledPapyrusWithRoyalGuards == true)
        {
            global.msg[2] = scr_gettext("obj_bara01_668")
            global.msg[3] = scr_gettext("obj_bara01_669")
            global.msg[4] = scr_gettext("obj_bara01_670")
            global.msg[5] = scr_gettext("obj_bara01_671")
        }
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 6
    }
    if (con == 6 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        con = 7
        with (obj_bara02)
        {
            blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
            obj_bara01.blcon = blcon
            blcon.sprite_index = spr_blconsm2
            global.typer = 2
            global.msg[0] = scr_gettext("obj_bara01_687")
            writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        }
    }
    if (con == 7 && instance_exists(OBJ_WRITER) == false)
    {
        with (mypart1)
            shaker = 2
        with (blcon)
            instance_destroy()
        blcon = instance_create(((x + blconx) + 28), (y + blcony), obj_blconsm)
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara01_699")
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 8
    }
    if (con == 8 && instance_exists(OBJ_WRITER) == false)
    {
        with (mypart1)
            shaker = 0
        with (blcon)
            instance_destroy()
        con = 9
        with (obj_bara02)
        {
            blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
            obj_bara01.blcon = blcon
            blcon.sprite_index = spr_blconsm2
            global.typer = 2
            global.msg[0] = scr_gettext("obj_bara01_716")
            global.msg[1] = scr_gettext("obj_bara01_717")
            global.msg[2] = scr_gettext("obj_bara01_718")
            global.msg[3] = scr_gettext("obj_bara01_719")
            writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        }
    }
    if (con == 9 && instance_exists(OBJ_WRITER) == false)
    {
        with (mypart1)
            shaker = 0
        with (blcon)
            instance_destroy()
        blcon = instance_create(((x + blconx) + 28), (y + blcony), obj_blconsm)
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara01_731")
        global.msg[0] = scr_gettext("obj_bara01_732")
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 10
    }
    if (con == 10 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        global.mnfight = 3
        con = 11
        mercymod = 999
        global.monsterdef[myself] = -999
        with (obj_bara02)
        {
            mercymod = 999
            global.monsterdef[myself] = -999
        }
        caster_free(conmusic)
        global.msg[0] = scr_gettext("obj_bara01_751")
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
