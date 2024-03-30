if (global.mnfight == 3)
    attacked = 0
if (global.myfight == 0 && global.mnfight == 0)
    eat = 0
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
        global.turntimer = 150
        if (mycommand < 50)
        {
            global.firingrate = 4
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) > true)
                global.firingrate = 7
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = 11
            gen = instance_create(0, 0, obj_1sidegen)
            if (eat == 1)
                gen.specgreen = 1
            gen.bullettype = 6
        }
        if (mycommand >= 50)
        {
            global.firingrate = 12
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
                global.firingrate = 22
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = 30
            gen = instance_create(0, 0, obj_1sidegen)
            if (eat == 1)
                gen.specgreen = 1
            gen.bullettype = 5
        }
        gen.myself = myself
        gen.dmg = global.monsteratk[myself]
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_parsnik_431")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_parsnik_432")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_parsnik_433")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_parsnik_434")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_parsnik_435")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_parsnik_436")
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_parsnik_437")
        attacked = 1
    }
    if (mercymod == 999999)
    {
        global.turntimer = -1
        global.mnfight = 3
    }
    whatiheard = -1
}
if (whatiheard == 1 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 8)
    {
        killed = 0
        instance_destroy()
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
                global.msg[0] = scr_gettext("obj_parsnik_478")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.myfight = 0
                global.mnfight = 1
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                scr_mercystandard()
                global.msg[0] = scr_gettext("obj_parsnik_495")
                if (mercy < 8)
                {
                    global.msg[0] = scr_gettext("obj_parsnik_498")
                    instance_create(0, 0, obj_foodsound)
                    scr_recover(5)
                    mypart1.pause = 1
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                eat = 1
                global.msc = 0
                global.msg[0] = scr_gettext("obj_parsnik_512")
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
