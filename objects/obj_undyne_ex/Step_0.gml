if (global.mnfight == 4 && attacked == 1)
{
    if (hitno > 0)
    {
        if (hitno >= 1 && rating < 10)
            rating += 1
        if (hitno >= 3 && rating < 10)
            rating = 10
    }
    else if (rating > 8)
        rating -= 1
    attacked = 0
    global.mnfight = 5
    if (global.border == 12)
        global.border = 13
    SCR_BORDERSETUP()
    alarm[7] = 10
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
        alarm[5] = 15
        alarm[6] = 1
        talked = true
        global.heard = 0
        if (order == -35)
        {
            global.mnfight = 99
            global.bmenuno = 4
            obj_heart.x = -400
            alarm[5] = -2
            alarm[6] = -2
            con = 60
        }
    }
}
if (uncancel == 1)
{
    alarm[5] = 100
    if (instance_exists(OBJ_WRITER) == false)
    {
        alarm[5] = 1
        uncancel = 0
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
    global.monsterhp[myself] -= takedamage
    with (dmgwriter)
        alarm[2] = 15
    if (global.monsterhp[myself] > 0)
    {
        global.hurtanim[myself] = 0
        mypart1.pause = 0
        global.myfight = 0
        global.mnfight = 1
    }
    else
    {
        global.myfight = -99
        global.mnfight = -99
        global.hurtanim[myself] = 0
        con = 50
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
if (greenlock == 1 && global.mnfight > 0)
{
    if (obj_heart.sprite_index == spr_heartgreen)
        obj_heart.y = (obj_uborder.y + 34)
    else
        greenlock = 0
}
else
    greenlock = 0
if (darkify == 1)
{
    if (pseudodarker.image_alpha < 0.5)
        pseudodarker.image_alpha += 0.04
    else
        darkify = 2
    obj_borderparent.image_alpha = (1 - pseudodarker.image_alpha)
}
if (darkify == 3)
{
    if (pseudodarker.image_alpha > 0)
        pseudodarker.image_alpha -= 0.04
    obj_borderparent.image_alpha = (1 - pseudodarker.image_alpha)
    if (pseudodarker.image_alpha <= 0)
    {
        darkify = 0
        with (pseudodarker)
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
        hitno = 0
        xx = (room_width / 2)
        yy = (room_height / 2)
        global.turntimer = 300
        global.firingrate = 15
        if (obj_heart.sprite_index == spr_heartgreen)
        {
            gen = instance_create(xx, yy, obj_spearblocker)
            gen.lesson = lesson
            gen.rating = rating
            gen.dmg = global.monsteratk[myself]
            with (gen)
                event_user(1)
        }
        else
        {
            if (orderb == 0 || orderb == 6)
            {
                borderspec = 0
                global.turntimer = 240
                event_user(2)
                ratingb += 1
                lesson += 1
                if (ratingb > 10)
                    ratingb = 10
                if (ratingb < 8)
                    ratingb = 8
                global.firingrate = (18 - ratingb)
                gen = instance_create(x, y, obj_spearbulletfollowgen)
                gen.dmg = global.monsteratk[myself]
            }
            if (orderb == 1 || orderb == 7)
            {
                global.turntimer = 220
                borderspec = 1
                ratingb += 1
                lesson += 1
                if (ratingb > 10)
                    ratingb = 10
                if (ratingb < 8)
                    ratingb = 8
                global.firingrate = (23 - ratingb)
                gen = instance_create(x, y, obj_risespearbulletgen)
                gen.dmg = global.monsteratk[myself]
            }
            if (orderb == 2 || orderb == 3)
            {
                borderspec = 0
                global.turntimer = 215
                ratingb += 1
                lesson += 1
                gen = instance_create(x, y, obj_rotspeargen_gen)
                gen.type = 0
                gen.t = 0
                gen.dmg = global.monsteratk[myself]
            }
            if (orderb == 4)
            {
                borderspec = 0
                global.turntimer = 400
                ratingb += 1
                lesson += 1
                gen = instance_create(x, y, obj_followspeargen_2)
                gen.dmg = global.monsteratk[myself]
            }
            if (orderb == 5)
            {
                borderspec = 0
                global.turntimer = 215
                ratingb += 1
                lesson += 1
                gen = instance_create(x, y, obj_rotspeargen_gen)
                gen.type = 1
                gen.t = 1
                gen.dmg = global.monsteratk[myself]
            }
            orderb += 1
            if (orderb >= 8)
                orderb = 4
        }
        gen.myself = myself
        hitno = 0
        attacked = 1
        order += 1
        lesson -= 1
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_undyne_ex_781")
    }
}
if (global.mnfight == 3 && darkify > 0 && darkify != 3)
    darkify = 3
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_undyne_ex_808")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
    }
}
siner += 1
if instance_exists(obj_boxsiner)
    obj_boxsiner.x = (obj_boxsiner.xstart + (sin((siner / 24)) * 40))
if (global.myfight == 4)
{
    if (global.mercyuse == false)
    {
        mercied += 1
        scr_mercystandard()
    }
}
if (obj_heart.sprite_index == spr_heartgreen && global.mnfight == 2)
    obj_heart.movement = 3
if (global.mnfight == 2 && global.turntimer < 1 && obj_heart.sprite_index == spr_heart)
    global.mnfight = 4
if (con == 50)
{
    con = 51
    alarm[4] = 90
}
if (con == 52)
{
    shakify = 2
    mypart1.shakify = 1
    myfight = 0
    mnfight = 99
    global.bmenuno = 4
    global.border = 0
    SCR_BORDERSETUP()
    con = 53
    global.msc = 0
    global.typer = 94
    global.msg[0] = scr_gettext("obj_undyne_ex_863")
    global.msg[1] = scr_gettext("obj_undyne_ex_864")
    global.msg[2] = scr_gettext("obj_undyne_ex_865")
    global.msg[3] = scr_gettext("obj_undyne_ex_866")
    global.msg[4] = scr_gettext("obj_undyne_ex_867")
    global.msg[5] = scr_gettext("obj_undyne_ex_868")
    global.msg[6] = scr_gettext("obj_undyne_ex_869")
    global.msg[7] = scr_gettext("obj_undyne_ex_870")
    global.msg[8] = scr_gettext("obj_undyne_ex_871")
    global.msg[9] = scr_gettext("obj_undyne_ex_872")
    global.msg[10] = scr_gettext("obj_undyne_ex_873")
    scr_blcon_x(blconx, blcony)
}
if (con == 53 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 95
    global.msg[0] = scr_gettext("obj_undyne_ex_881")
    melter = scr_marker((mypart1.x - 20), -40, spr_undynex_melt)
    con = 54
    scr_blcon_x(blconx, blcony)
    with (mypart1)
        instance_destroy()
}
if (con == 54 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 96
    global.msg[0] = scr_gettext("obj_undyne_ex_893")
    melter.image_index = 1
    con = 71
    scr_blcon_x(blconx, blcony)
}
if (con == 71 && instance_exists(OBJ_WRITER) == false)
{
    global.monstersprite = melter.sprite_index
    global.vaporspeed = 0
    ddd = instance_create(melter.x, melter.y, obj_vaporized_new)
    with (ddd)
        scr_newvapordata(NewMonsterVapor.UndyneEX)
    ddd.sprite_index = melter.sprite_index
    with (melter)
        instance_destroy()
    ddd.ht = ht
    ddd.wd = wd
    ddd.image_speed = 0
    ddd.image_index = 1
    global.kills += 1
    global.xp += 1500
    scr_levelup()
    con = 72
    alarm[4] = 180
}
if (con == 73)
{
    instance_create(x, y, obj_unfader)
    FL_UndyneStatus = UndyneStatus.Killed
    FL_KilledUndyneEX = 1
    global.plot = 122
    alarm[9] = 10
    con = 74
}
if (obj_heart.sprite_index == spr_heart)
    global.mercy = 1
if (obj_heart.sprite_index == spr_heartgreen)
    global.mercy = 1
