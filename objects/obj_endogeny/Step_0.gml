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
        alarm[5] = 20
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
        global.hurtanim[myself] = 0
        mypart1.pause = 0
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
        pop = scr_monstersum()
        global.turntimer = 200
        global.firingrate = 10
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.5)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.8)
        if (mycommand >= 50)
        {
            gen = instance_create(0, 0, obj_amalgam_rocketdog)
            gen.dmg = global.monsteratk[myself]
        }
        else
        {
            gen = instance_create(0, 0, obj_amalgam_laserdog)
            gen.dmg = global.monsteratk[myself]
            if (turns == 1)
            {
                with (gen)
                {
                    con = 4
                    image_index = 7
                }
            }
        }
        turns = 1
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_endogeny_360")
        if (mycommand >= 45)
            global.msg[0] = scr_gettext("obj_endogeny_361")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_endogeny_362")
        if (close == 1)
            global.msg[0] = scr_gettext("obj_endogeny_363")
        if (pet == 1)
            global.msg[0] = scr_gettext("obj_endogeny_366")
        if (pet == 2)
            global.msg[0] = scr_gettext("obj_endogeny_367")
        if (pet == 3)
            global.msg[0] = scr_gettext("obj_endogeny_368")
        if (pet == 4)
        {
            global.msg[0] = scr_gettext("obj_endogeny_369")
            global.monstername[myself] = scr_gettext("monstername_57b")
        }
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_endogeny_370")
        if (mercymod == 999999)
        {
            global.msg[0] = scr_gettext("obj_endogeny_371")
            global.monstername[myself] = scr_gettext("monstername_57b")
        }
        attacked = 1
    }
    if (mercymod == 999999)
    {
        global.turntimer = -1
        global.mnfight = 3
    }
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
                global.msg[0] = scr_gettext("obj_endogeny_403")
                if (mercymod == 999999)
                    global.msg[0] = scr_gettext("obj_endogeny_404")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                if (close == 1)
                    global.msg[0] = scr_gettext("obj_endogeny_416")
                if (close == 0)
                {
                    global.msg[0] = scr_gettext("obj_endogeny_420")
                    global.msg[1] = scr_gettext("obj_endogeny_421")
                    mypart1.mouthspeed = 0.1
                    caster_set_pitch(global.batmusic, 0.9)
                    close = 1
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 2)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_endogeny_435")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_endogeny_446")
                if (pet == 4)
                    global.msg[0] = scr_gettext("obj_endogeny_449")
                if (pet == 3)
                {
                    pet = 4
                    global.msg[0] = scr_gettext("obj_endogeny_455")
                    caster_set_volume(global.batmusic, 0.3)
                    caster_set_pitch(global.batmusic, 0.8)
                    caster_loop(dogsong, 0.8, 0.8)
                    mypart1.spared = 1
                    global.sp = obj_battlecontroller.tempspd
                    mercymod = 999999
                    FL_SparedEndogenny = 1
                }
                if (pet == 2)
                {
                    global.msg[0] = scr_gettext("obj_endogeny_466")
                    caster_set_pitch(global.batmusic, 1.2)
                    mypart1.mouthspeed = 1
                    mypart1.shaker = 4
                    pet = 3
                }
                if (pet == 1)
                {
                    global.msg[0] = scr_gettext("obj_endogeny_475")
                    global.msg[1] = scr_gettext("obj_endogeny_476")
                }
                if (close == 1 && pet == 0)
                {
                    global.msg[0] = scr_gettext("obj_endogeny_480")
                    global.msg[1] = scr_gettext("obj_endogeny_481")
                    global.msg[2] = scr_gettext("obj_endogeny_482")
                    global.msg[3] = scr_gettext("obj_endogeny_483")
                    mypart1.mouthspeed = 0.2
                    mypart1.shaker = 1
                    caster_set_pitch(global.batmusic, 1)
                    pet = 1
                }
                if (close == 0)
                    global.msg[0] = scr_gettext("obj_endogeny_491")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_endogeny_500")
                if (pet > 1)
                    global.msg[0] = scr_gettext("obj_endogeny_503")
                if (pet == 1)
                {
                    global.msg[0] = scr_gettext("obj_endogeny_507")
                    global.msg[1] = scr_gettext("obj_endogeny_508")
                    global.msg[2] = scr_gettext("obj_endogeny_509")
                    global.msg[3] = scr_gettext("obj_endogeny_510")
                    pet = 2
                    mypart1.mouthspeed = 0.5
                    mypart1.shaker = 2
                    caster_set_pitch(global.batmusic, 1.1)
                }
                if (pet == 0)
                    global.msg[0] = scr_gettext("obj_endogeny_518")
                global.msc = 0
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
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
