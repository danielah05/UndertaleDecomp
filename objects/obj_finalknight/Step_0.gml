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
        global.firingrate = 7
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.4)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.7)
        if (asleep == 0)
        {
            if (mycommand > 75 && pop == 1)
            {
                global.turntimer = 150
                gen = instance_create(x, y, obj_hammergen)
            }
            else
            {
                global.firingrate = 9
                gen = instance_create(((global.idealborder[0] + (c_borderwidth(0) / 2)) - 20), (global.idealborder[2] - 40), obj_skyorb)
            }
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_finalknight_515")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_finalknight_516")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_finalknight_517")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_finalknight_518")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_finalknight_519")
        if (asleep > 0)
            global.msg[0] = scr_gettext("obj_finalknight_520")
        attacked = 1
    }
    if (asleep == 1 && pop == 1)
    {
        attacked = 1
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
                global.msg[0] = scr_gettext("obj_finalknight_553")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_finalknight_562")
                talk += 1
                if (talk == 3)
                    global.msg[0] = scr_gettext("obj_finalknight_566")
                if (asleep == 1)
                {
                    global.msg[0] = scr_gettext("obj_finalknight_570")
                    talk = 0
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                mercymod += 20
                if (sleepy == 0)
                {
                    global.msg[0] = scr_gettext("obj_finalknight_586")
                    if (FL_ShyrenStatus == ShyrenStatus.Encouraged)
                        global.msg[0] = scr_gettext("obj_finalknight_588")
                }
                if (sleepy == 1)
                    global.msg[0] = scr_gettext("obj_finalknight_592")
                if (asleep == 1)
                    global.msg[0] = scr_gettext("obj_finalknight_596")
                if (sleepy > 1 && asleep == 0)
                {
                    global.msg[0] = scr_gettext("obj_finalknight_601")
                    mercymod = 200
                    asleep = 1
                    global.monsterdef[myself] = -30
                }
                sleepy += 1
                if (FL_ShyrenStatus == ShyrenStatus.Encouraged)
                    sleepy += 1
                if (sleepy > 0)
                    mypart1.asleep = 1
                if (asleep == 1)
                    mypart1.asleep = 2
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
