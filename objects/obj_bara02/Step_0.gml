if (global.mnfight == 3)
{
    attacked = 0
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
    if (attacked == 0)
    {
        pop = scr_monstersum()
        global.turntimer = 180
        if (instance_exists(obj_carrotstargen) == false)
        {
            if (whatiheard == 1 && con == 0 && pop > 1)
                mycommand = 80
            if (mycommand >= 0 && mycommand <= 50)
            {
                global.firingrate = 25
                gen = instance_create(x, y, obj_carrotstargen)
                gen.dmg = global.monsteratk[myself]
                gen.alarm[0] = 8
                if (con > 6 && scr_monstersum() == 2)
                    gen.shake = 1
            }
            else
            {
                global.firingrate = 20
                if (whatiheard == 1 && con == 0 && pop > 1)
                {
                    instance_create(((room_width / 2) - 15), ((room_height / 2) - 80), obj_greenarmor)
                    global.firingrate = 35
                }
                gen = instance_create(x, y, obj_carrotstargen)
                gen.dmg = global.monsteratk[myself]
                gen.alarm[1] = 8
                if (con > 6 && scr_monstersum() == 2)
                    gen.shake = 1
            }
            gen.myself = myself
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_bara02_527")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_bara02_528")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_bara02_529")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_bara02_530")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_bara02_531")
        pop = scr_monstersum()
        if (pop == 1)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_bara02_538")
            if (mycommand >= 25)
                global.msg[0] = scr_gettext("obj_bara02_539")
            if (mycommand >= 50)
                global.msg[0] = scr_gettext("obj_bara02_540")
            if (mycommand >= 75)
                global.msg[0] = scr_gettext("obj_bara02_541")
        }
        if (global.monsterhp[myself] < 30)
            global.msg[0] = scr_gettext("obj_bara02_545")
        attacked = 1
        whatiheard = -1
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
                global.msg[0] = scr_gettext("obj_bara02_564")
                if (scr_murderlv() >= MurderLevel.Lv12UndyneEXKilled && FL_SparedSpecific == 0)
                {
                    global.msg[0] = scr_gettext("obj_bara02_567")
                    global.msg[1] = scr_gettext("obj_bara02_568")
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_bara02_580")
                if (scr_monstersum() < 2)
                    global.msg[0] = scr_gettext("obj_bara02_581")
                if (shirtless == 1)
                {
                    global.msg[0] = scr_gettext("obj_bara02_585")
                    if instance_exists(obj_bara01)
                        obj_bara01.whatiheard = 12
                }
				obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_bara02_597")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
    }
}
if (alphaup == 1 && image_alpha < 1)
    image_alpha += 0.05
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
if (global.mnfight == 5)
{
    if (con == 0)
    {
        obj_heart.x = -800
        obj_heart.movement = -1
        global.border = 0
        alarm[4] = 15
        con = 1
    }
    if (con == 2)
    {
        blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
        blcon.sprite_index = spr_blconsm2
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara02_644")
        global.msg[1] = scr_gettext("obj_bara02_645")
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 3
    }
    if (con == 3 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        snd_play(snd_grab)
        with (mypart1)
            bodypic = spr_barashirtless
        con = 4
        alarm[4] = 60
    }
    if (con == 5 && instance_exists(OBJ_WRITER) == false)
    {
        if instance_exists(obj_bara01)
        {
            with (obj_bara01.mypart1)
                event_user(2)
        }
        blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
        blcon.sprite_index = spr_blconsm2
        global.typer = 2
        global.msg[0] = scr_gettext("obj_bara02_664")
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 6
    }
    if (con == 6 && instance_exists(OBJ_WRITER) == false)
    {
        shirtless = 1
        with (blcon)
            instance_destroy()
        global.msg[0] = scr_gettext("obj_bara02_672")
        con = 7
        global.mnfight = 3
        obj_bara01.shake = 1
        obj_heart.movement = 1
    }
}
