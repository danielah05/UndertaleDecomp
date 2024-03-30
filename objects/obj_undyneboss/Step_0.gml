if (global.mnfight == 4 && attacked == 1)
{
    if (hitno > 0)
    {
        if (hitno == 1)
            rating += 1
        if (hitno > 1)
            rating += 2
        if (berserk == 1)
            rating -= 1
    }
    else
    {
        if (rating >= 10 && lesson > 5)
            rating -= 2
        else if (rating > 8)
            rating -= 1
        if (berserk == 1)
        {
            if (rating > 6)
                rating -= 1
        }
    }
    attacked = 0
    global.mnfight = 5
    if (global.border == 12)
        global.border = 13
    SCR_BORDERSETUP()
    alarm[7] = 10
    if instance_exists(obj_undynesiner2)
    {
        with (obj_undynesiner2)
            event_user(1)
    }
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
if (control_check_pressed(InteractButton) && uncancel == 0)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5] = 2
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
    tempdie = 0
    shudder = 8
    if (global.monsterhp[myself] < 1 && died == 0)
        shudder = 16
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
        mypart1 = instance_create(x, y, part1)
        global.hurtanim[myself] = 0
        image_index = 0
        global.myfight = 0
        global.mnfight = 1
    }
    else
    {
        global.myfight = 0
        global.mnfight = 1
        if (died == 0)
        {
            caster_stop(global.batmusic)
            deadmusic1 = caster_load("music/endingexcerpt1.ogg")
            deadmusic2 = caster_load("music/endingexcerpt2.ogg")
            con = 50
            obj_heart.sprite_index = spr_heart
            with (obj_boxsiner)
                fade = 1
            order = -40
            lesson = -40
            died = 1
            global.mnfight = 99
        }
        mypart1 = instance_create(x, y, part1)
        global.hurtanim[myself] = 0
        image_index = 0
    }
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
        global.turntimer = 200
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
        else if (mycommand <= 50)
        {
            event_user(2)
            ratingb += 1
            lesson -= 1
            if (ratingb > 9)
                ratingb = 9
            global.firingrate = (19 - ratingb)
            gen = instance_create(x, y, obj_spearbulletfollowgen)
            gen.dmg = global.monsteratk[myself]
        }
        else
        {
            borderspec = 1
            ratingb += 1
            lesson -= 1
            if (ratingb > 9)
                ratingb = 9
            global.firingrate = (23 - ratingb)
            gen = instance_create(x, y, obj_risespearbulletgen)
            gen.dmg = global.monsteratk[myself]
        }
        gen.myself = myself
        if (global.monsterhp[myself] < global.monstermaxhp[myself])
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_undyneboss_1085")
            if (mycommand >= 20)
                global.msg[0] = scr_gettext("obj_undyneboss_1086")
            if (mycommand >= 40)
                global.msg[0] = scr_gettext("obj_undyneboss_1087")
            if (mycommand >= 60)
                global.msg[0] = scr_gettext("obj_undyneboss_1088")
            if (mycommand >= 80)
                global.msg[0] = scr_gettext("obj_undyneboss_1089")
        }
        if (global.monsterhp[myself] >= (global.monstermaxhp[myself] / 2))
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_undyneboss_1094")
            if (mycommand >= 10)
                global.msg[0] = scr_gettext("obj_undyneboss_1095")
            if (mycommand >= 20)
                global.msg[0] = scr_gettext("obj_undyneboss_1096")
            if (mycommand >= 30)
                global.msg[0] = scr_gettext("obj_undyneboss_1097")
            if (mycommand >= 40)
                global.msg[0] = scr_gettext("obj_undyneboss_1098")
            if (mycommand >= 50)
                global.msg[0] = scr_gettext("obj_undyneboss_1099")
            if (mycommand >= 60)
                global.msg[0] = scr_gettext("obj_undyneboss_1100")
            if (mycommand >= 70)
                global.msg[0] = scr_gettext("obj_undyneboss_1101")
            if (mycommand >= 80)
                global.msg[0] = scr_gettext("obj_undyneboss_1102")
            if (mycommand >= 90)
                global.msg[0] = scr_gettext("obj_undyneboss_1103")
            if (order > 22)
            {
                if (mycommand >= 0)
                    global.msg[0] = scr_gettext("obj_undyneboss_1107")
                if (mycommand >= 25)
                    global.msg[0] = scr_gettext("obj_undyneboss_1108")
                if (mycommand >= 50)
                    global.msg[0] = scr_gettext("obj_undyneboss_1109")
                if (mycommand >= 75)
                    global.msg[0] = scr_gettext("obj_undyneboss_1110")
                if (mycommand >= 90)
                    global.msg[0] = scr_gettext("obj_undyneboss_1111")
            }
        }
        if (order == -40)
            global.msg[0] = scr_gettext("obj_undyneboss_1118")
        if (order == -39)
            global.msg[0] = scr_gettext("obj_undyneboss_1119")
        if (order == -38)
            global.msg[0] = scr_gettext("obj_undyneboss_1120")
        if (order == -37)
            global.msg[0] = scr_gettext("obj_undyneboss_1121")
        if (order == -36)
            global.msg[0] = scr_gettext("obj_undyneboss_1122")
        attacked = 1
        order += 1
        lesson += 1
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
                global.msg[0] = scr_gettext("obj_undyneboss_1145")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                chal_e = 0
                if (rating == 8)
                {
                    rating = 7
                    chal_e = 1
                }
                if (rating == 9)
                {
                    rating = 8
                    chal_e = 1
                }
                if (rating == 10)
                {
                    rating = 9
                    chal_e = 1
                }
                if (rating == 11)
                {
                    rating = 10
                    chal_e = 1
                }
                if (rating == 12)
                {
                    rating = 10
                    chal_e = 1
                }
                if (rating == 13)
                {
                    rating = 11
                    chal_e = 1
                }
                if (rating == 14)
                {
                    rating = 11
                    chal_e = 1
                }
                if (rating == 15)
                {
                    rating = 12
                    chal_e = 1
                }
                if (rating == 16)
                {
                    rating = 12
                    chal_e = 1
                }
                if (chal_e == 0)
                    global.msg[0] = scr_gettext("obj_undyneboss_1168")
                if (chal_e == 1)
                {
                    if (ratingb < 6)
                        ratingb += 1
                    global.msg[0] = scr_gettext("obj_undyneboss_1174")
                    if (rating == 7)
                        global.msg[0] = scr_gettext("obj_undyneboss_1176")
                }
                if (con >= 50)
                    global.msg[0] = scr_gettext("obj_undyneboss_1182")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_undyneboss_1195")
                plead_e = 0
                if (ratingb == 7)
                {
                    ratingb = 6
                    plead_e = 1
                }
                if (ratingb == 8)
                {
                    ratingb = 7
                    plead_e = 1
                }
                if (ratingb == 9)
                {
                    ratingb = 7
                    plead_e = 1
                }
                if (rating == 9)
                {
                    rating = 10
                    plead_e = 1
                }
                if (rating == 8)
                {
                    rating = 10
                    plead_e = 1
                }
                if (rating == 7)
                {
                    rating = 9
                    plead_e = 1
                }
                if (plead_e == 0)
                    global.msg[0] = scr_gettext("obj_undyneboss_1205")
                if (plead_e == 1)
                {
                    global.msg[0] = scr_gettext("obj_undyneboss_1209")
                    global.msg[1] = scr_gettext("obj_undyneboss_1210")
                }
                if (con >= 50)
                    global.msg[0] = scr_gettext("obj_undyneboss_1215")
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
if (con == 0)
{
    con = 1
    alarm[4] = 30
}
if (con == 1)
{
    global.bmenuno = 4
    obj_heart.x = ((room_width / 2) - (obj_heart.sprite_width / 2))
    obj_heart.y = ((room_height / 2) - (obj_heart.sprite_height / 2))
    global.myfight = 0
    global.mnfight = 99
}
if (con == 2)
{
    if (FL_UndyneDifficultyCounter < 4)
    {
        event_user(1)
        con = 3.1
        alarm[4] = 30
    }
    else
        con = 4.1
}
if (con == 4.1)
{
    global.typer = 39
    global.msg[0] = scr_gettext("obj_undyneboss_1278")
    if (FL_UndyneDifficultyCounter == 2)
    {
        global.msg[0] = scr_gettext("obj_undyneboss_1281")
        lesson = 8
        order = 9
    }
    if (FL_UndyneDifficultyCounter == 3)
    {
        global.msg[0] = scr_gettext("obj_undyneboss_1286")
        lesson = 13
        order = 15
    }
    if (FL_UndyneDifficultyCounter == 4)
    {
        global.msg[0] = scr_gettext("obj_undyneboss_1292")
        lesson = 22
        order = 22
    }
    if (FL_UndyneDifficultyCounter > 4)
    {
        global.msg[0] = scr_gettext("obj_undyneboss_1298")
        lesson = 22
        order = 22
    }
    scr_blcon_x(blconx, blcony)
    con = 5
}
if (con == 5 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_undyneboss_1310")
    caster_loop(global.batmusic, 0.82, 1)
    global.myfight = 0
    global.mnfight = 3
    con = 6
}
if (global.mnfight == 2 && global.turntimer < 1 && obj_heart.sprite_index == spr_heart)
    global.mnfight = 4
if (con == 50)
{
    with (mypart1)
        instance_destroy()
    image_index = 2
    shakify = 1
    myfight = 0
    mnfight = 99
    global.bmenuno = 4
    global.border = 4
    SCR_BORDERSETUP()
    con = 51
    global.msc = 0
    global.typer = 40
    global.msg[0] = scr_gettext("obj_undyneboss_1336")
    global.msg[1] = scr_gettext("obj_undyneboss_1337")
    global.msg[2] = scr_gettext("obj_undyneboss_1338")
    global.msg[3] = scr_gettext("obj_undyneboss_1339")
    scr_blcon_x(blconx, blcony)
}
if (con == 51)
{
    obj_heart.x = (obj_uborder.y + 20)
    obj_heart.x = ((room_width / 2) - 8)
}
if (con == 51 && instance_exists(OBJ_WRITER) == false)
{
    con = 50.1
    shakify = 3
    alarm[4] = 60
}
if (con == 51.1)
{
    shakify = 0
    x = xstart
    y = ystart
    image_index = 3
    global.faceemotion = 8
    global.typer = 40
    global.msg[0] = scr_gettext("obj_undyneboss_1365")
    scr_blcon_x(blconx, blcony)
    con = 52
}
if (con == 53 && instance_exists(OBJ_WRITER) == false)
{
    event_user(1)
    con = 54
    alarm[4] = 30
}
if (con == 52 && instance_exists(OBJ_WRITER) == false)
{
    shakify = 0
    image_index = 0
    global.typer = 41
    mypart1 = instance_create(x, y, part1)
    with (mypart1)
        event_user(4)
    caster_play(deadmusic1, 1, 1)
    global.msg[0] = scr_gettext("obj_undyneboss_1386")
    global.msg[1] = scr_gettext("obj_undyneboss_1387")
    global.msg[2] = scr_gettext("obj_undyneboss_1388")
    global.msg[3] = scr_gettext("obj_undyneboss_1389")
    global.msg[4] = scr_gettext("obj_undyneboss_1390")
    scr_blcon_x(blconx, blcony)
    con = 53
}
if (con == 55)
{
    global.typer = 41
    global.msg[0] = scr_gettext("obj_undyneboss_1401")
    global.msg[1] = scr_gettext("obj_undyneboss_1402")
    global.msg[2] = scr_gettext("obj_undyneboss_1403")
    scr_blcon_x(blconx, blcony)
    con = 56
}
if (con == 56 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_undyneboss_1410")
    global.myfight = 0
    global.mnfight = 3
    con = 57
}
if (con == 60)
{
    caster_free(deadmusic1)
    caster_free(deadmusic2)
    global.faceemotion = 7
    global.typer = 40
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undyneboss_1424")
    global.msg[1] = scr_gettext("obj_undyneboss_1425")
    global.msg[2] = scr_gettext("obj_undyneboss_1426")
    global.msg[3] = scr_gettext("obj_undyneboss_1427")
    global.msg[4] = scr_gettext("obj_undyneboss_1428")
    global.msg[5] = scr_gettext("obj_undyneboss_1429")
    scr_blcon_x(blconx, blcony)
    con = 61
}
if (con == 61 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 8
    with (obj_undynesiner2)
        event_user(1)
    global.msg[0] = scr_gettext("obj_undyneboss_1438")
    global.msg[1] = scr_gettext("obj_undyneboss_1439")
    global.msg[2] = scr_gettext("obj_undyneboss_1440")
    scr_blcon_x(blconx, blcony)
    con = 62
}
if (con == 62 && instance_exists(OBJ_WRITER) == false)
{
    with (obj_undynesiner2)
        event_user(1)
    global.typer = 42
    global.msg[0] = scr_gettext("obj_undyneboss_1449")
    scr_blcon_x(blconx, blcony)
    con = 63
}
if (con == 63 && instance_exists(OBJ_WRITER) == false)
{
    con = 64
    global.typer = 42
    with (obj_undynesiner2)
        event_user(1)
    alarm[4] = 120
    global.msg[0] = scr_gettext("obj_undyneboss_1460")
    scr_blcon_x(blconx, blcony)
}
if (con == 65 && instance_exists(OBJ_WRITER) == false)
{
    con = 66
    global.typer = 43
    with (melter)
        image_index = 1
    alarm[4] = 120
    global.msg[0] = scr_gettext("obj_undyneboss_1470")
    scr_blcon_x(blconx, blcony)
}
if (con == 67 && instance_exists(OBJ_WRITER) == false)
{
    con = 68
    global.typer = 44
    with (melter)
        image_index = 2
    alarm[4] = 120
    global.msg[0] = scr_gettext("obj_undyneboss_1480")
    scr_blcon_x(blconx, blcony)
}
if (con == 69 && instance_exists(OBJ_WRITER) == false)
{
    con = 70
    global.typer = 45
    with (melter)
        image_index = 3
    alarm[4] = 120
    global.msg[0] = scr_gettext("obj_undyneboss_1490")
    scr_blcon_x(blconx, blcony)
}
if (con == 71 && instance_exists(OBJ_WRITER) == false)
{
    global.vaporspeed = 0
    global.monstersprite = spr_undyneb_lastmelt
    ddd = instance_create(melter.x, melter.y, obj_vaporized)
    ddd.image_speed = 0
    ddd.image_index = 1
    global.kills += 1
    global.xp += 500
    scr_levelup()
    with (melter)
        instance_destroy()
    con = 72
    alarm[4] = 200
}
if (con == 73)
{
    instance_create(x, y, obj_unfader)
    FL_UndyneStatus = UndyneStatus.Killed
    global.plot = 122
    alarm[9] = 10
    con = 74
}
FL_UndyneDeathHP = global.monsterhp[myself]
if (obj_heart.sprite_index == spr_heart)
    global.mercy = 0
if (obj_heart.sprite_index == spr_heartgreen)
    global.mercy = 1
if (died == 1)
    global.mercy = 1
if (died == 1 && con >= 53 && con < 60)
{
    if (caster_is_playing(deadmusic1) == false && caster_is_playing(deadmusic2) == false)
        caster_loop(deadmusic2, 1, 1)
}
if (shakify > 0)
{
    x = (xstart + random(shakify))
    y = (ystart + random(shakify))
}
if (global.debug == true && keyboard_check_pressed(ord("U")))
    global.monsterhp[myself] = 2
