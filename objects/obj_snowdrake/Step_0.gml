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
        mypart1 = instance_create(x, y, part1)
        mypart2 = instance_create(x, y, part2)
        global.hurtanim[myself] = 0
        image_index = 0
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
        if instance_exists(obj_jerry)
        {
            if (obj_jerry.ditch == 0)
                pop -= 1
        }
        global.turntimer = 120
        if (pop == 2)
            global.turntimer = 130
        global.firingrate = 16
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.4)
        if (pop == 2)
            global.firingrate = (global.firingrate * 2)
        if (mycommand >= 0 && mycommand <= 50)
        {
            gen = instance_create(x, y, obj_4sidegen)
            gen.bullettype = 1
        }
        else
        {
            global.firingrate += 8
            gen = instance_create(x, y, obj_4sidegen)
            gen.bullettype = 0
        }
        gen.myself = myself
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_snowdrake_507")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_snowdrake_508")
        if (mycommand >= 40)
            global.msg[0] = scr_gettext("obj_snowdrake_509")
        if (mycommand >= 60)
            global.msg[0] = scr_gettext("obj_snowdrake_510")
        if (mycommand >= 80)
            global.msg[0] = scr_gettext("obj_snowdrake_511")
        if (mercymod == 80)
            global.msg[0] = scr_gettext("obj_snowdrake_512")
        if (mercymod == 200)
            global.msg[0] = scr_gettext("obj_snowdrake_513")
        if (mercymod == -35)
            global.msg[0] = scr_gettext("obj_snowdrake_514")
        if (mercymod < -10)
            global.msg[0] = scr_gettext("obj_snowdrake_515")
        if (global.monsterhp[myself] < 20)
            global.msg[0] = scr_gettext("obj_snowdrake_516")
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
                global.msg[0] = scr_gettext("obj_snowdrake_533")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                gg = floor(random(6))
                if (gg <= 2)
                    global.msg[0] = scr_gettext("obj_snowdrake_542")
                if (gg == 3 || gg == 4)
                    global.msg[0] = scr_gettext("obj_snowdrake_543")
                if (gg == 5)
                {
                    global.msg[0] = scr_gettext("obj_snowdrake_545")
                    global.msg[1] = scr_gettext("obj_snowdrake_546")
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                mercymod = -10
                if (gg == 5)
                    mercymod = 222
            }
            if (whatiheard == 3)
            {
                if (joketold == 0)
                    mercymod = -4
                else
                {
                    mercymod = 80
                    FL_SparedSnowdrake = 1
                }
                global.msc = 0
                if (joketold == 0)
                    global.msg[0] = scr_gettext("obj_snowdrake_559")
                if (joketold == 1)
                    global.msg[0] = scr_gettext("obj_snowdrake_560")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                if (scr_monstersum() == 1)
                    global.msg[0] = scr_gettext("obj_snowdrake_568")
                if (scr_monstersum() > 1)
                {
                    global.msg[0] = scr_gettext("obj_snowdrake_570")
                    global.msg[1] = scr_gettext("obj_snowdrake_571")
                    scr_withallmonster(0, 20)
                    whatiheard = 19
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
