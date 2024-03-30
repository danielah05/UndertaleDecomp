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
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0])
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
        if (instance_exists(obj_bara03) == false)
        {
            if (mycommand >= 0 && mycommand <= 50)
            {
                global.firingrate = 25
                gen = instance_create(x, y, obj_xbulletgen)
                gen.dmg = global.monsteratk[myself]
                gen.alarm[0] = 8
            }
            else
            {
                global.firingrate = 20
                gen = instance_create(x, y, obj_warplinegen)
                gen.dmg = global.monsteratk[myself]
                gen.alarm[1] = 8
            }
            gen.myself = myself
        }
        if (mycommand >= 0)
            global.msg[0] = "* 03 rubs her glove quietly."
        if (mycommand >= 25)
            global.msg[0] = "* 04 hums and looks the other&  way."
        if (mycommand >= 50)
            global.msg[0] = "* 03 stands guard."
        if (mycommand >= 75)
            global.msg[0] = "* 04's twitches her tail."
        if (mycommand >= 90)
            global.msg[0] = "* Smells like a military zoo."
        pop = scr_monstersum()
        if (pop == 1)
        {
            if (mycommand >= 0)
                global.msg[0] = "* 04 holds her head in her&  hands."
            if (mycommand >= 25)
                global.msg[0] = "*Sad mews emerge from&  04's armor."
            if (mycommand >= 50)
                global.msg[0] = "* 04 is thunderstruck."
            if (mycommand >= 75)
                global.msg[0] = "* 04 does nothing."
        }
        if (global.monsterhp[myself] < 30)
            global.msg[0] = "* 04's breathing intensifies."
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
                global.msg[0] = (((("* RG 04 " + string(global.monsteratk[myself])) + " ATK ") + string(global.monsterdef[myself])) + " DEF&* Royal Guard member.&* Protective of her armor./^")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = "* You attempt to touch RG 04's&  glove^1.&* She bats your hand away./^"
                if (shake == 1)
                {
                    global.msg[0] = "* You touch RG 04's glove softly.&* She nods and begins to&  take it off./^"
                    toldhim = 1
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = "* You tell RG 04 to remember&  what being friends is about./^"
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
if (toldhim == 1 && global.turntimer > 6 && global.turntimer < 12 && global.mnfight == 2 && con == 0)
{
    global.turntimer = -1
    fuckyou = 1
    global.mnfight = 5
    global.border = 0
    obj_heart.x = -800
    obj_heart.movement = -1
}
if (fuckyou == 1)
    global.mnfight = 5
if (global.mnfight == 5)
{
    if (con == 0 && toldhim == 1)
    {
        caster_pause(global.batmusic)
        con = 0.1
        alarm[4] = 20
    }
    if (con == 1.1)
    {
        snd_play(snd_grab)
        with (mypart1)
            hand1pic = spr_barafist_cat
        con = 1
        alarm[4] = 40
    }
    if (con == 2)
    {
        blcon = instance_create((x + blconx), (y + blcony), obj_blconsm)
        global.typer = 2
        global.msc = 0
        global.msg[0] = "Actually&.../"
        global.msg[1] = "I still&wear&mine&too./%%"
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
        with (obj_bara03)
        {
            blcon = instance_create(((x - blconx) - 100), (y + blcony), obj_blconsm)
            obj_bara04.blcon = blcon
            blcon.sprite_index = spr_blconwdshrt_l
            global.typer = 2
            global.msg[0] = "Our friendship&bracelets from&high school./%%"
            writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        }
    }
    if (con == 4 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        blcon = instance_create(((x + blconx) - 5), (y + blcony), obj_blconsm)
        blcon.sprite_index = spr_blconwdshrt
        global.typer = 2
        global.msc = 0
        global.msg[0] = "03, I'm sorry.&I thought you hated&me, after what&happened.../"
        global.msg[1] = "We did some pretty&nasty things to&each other, because&of.../%%"
        writer = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 5
    }
    if (con == 5 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        con = 6
        global.msc = 0
        global.typer = 2
        with (obj_bara03)
        {
            blcon = instance_create(((x - blconx) - 100), (y + blcony), obj_blconsm)
            obj_bara04.blcon = blcon
            blcon.sprite_index = spr_blconwdshrt_l
            global.typer = 2
            global.msg[0] = "That old drama?&Forget about it./"
            global.msg[1] = "To tell you the&truth, I requested&to be partners&with you./"
            global.msg[2] = "I wanted to become&friends with you&again.../"
            global.msg[3] = "But I didn't know&how to breach the&topic./%%"
            writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        }
    }
    if (con == 6 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        blcon = instance_create(((x + blconx) - 5), (y + blcony), obj_blconsm)
        blcon.sprite_index = spr_blconwdshrt
        global.typer = 2
        global.msc = 0
        global.msg[0] = "03!/"
        global.msg[1] = "After this.../"
        global.msg[2] = "Do you want to get&some ice-cream?/%%"
        writer = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 7
    }
    if (con == 7 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        con = 8
        global.msc = 0
        global.typer = 2
        with (obj_bara03)
        {
            blcon = instance_create((x - blconx), (y + blcony), obj_blconsm)
            obj_bara04.blcon = blcon
            blcon.sprite_index = spr_blconsm2
            global.typer = 2
            global.msg[0] = "Salmon-&flavor?/%%"
            writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        }
    }
    if (con == 8 && instance_exists(OBJ_WRITER) == false)
    {
        with (blcon)
            instance_destroy()
        blcon = instance_create((x + blconx), (y + blcony), obj_blconsm)
        blcon.sprite_index = spr_blconsm
        global.typer = 2
        global.msc = 0
        global.msg[0] = "You know&it!/%%"
        writer = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        con = 10
    }
    if (con == 10 && instance_exists(OBJ_WRITER) == false)
    {
        fuckyou = 0
        with (blcon)
            instance_destroy()
        global.mnfight = 3
        con = 11
        mercymod = 999
        global.monsterdef[myself] = -999
        with (obj_bara03)
        {
            mercymod = 999
            global.monsterdef[myself] = -999
        }
        caster_free(conmusic)
        global.msg[0] = "* 03 and 04 are planning all&  sorts of things to do&  together."
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
