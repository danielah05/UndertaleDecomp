if (global.mnfight == 3)
{
    attacked = 0
    mypart1.stretchup = 0
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
        if (turns > 0)
        {
            if (turns == 1)
            {
                gen = instance_create(0, 0, obj_butterflyhead)
                gen.dmg = global.monsteratk[myself]
                turns = 2
            }
            else
            {
                turns = 1
                gen = instance_create(0, 0, obj_strangeman_headloss)
                gen.dmg = global.monsteratk[myself]
            }
        }
        else
        {
            global.turntimer = 250
            gen = instance_create(0, 0, obj_strangeman_intro)
            gen.dmg = global.monsteratk[myself]
            turns = 1
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_reaperbird_446")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_reaperbird_447")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_reaperbird_448")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_reaperbird_449")
        if (mycommand >= 98)
            global.msg[0] = scr_gettext("obj_reaperbird_450")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_reaperbird_451")
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_reaperbird_452")
        attacked = 1
    }
    if (mercymod == 99999)
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
                if (mercymod < 100)
                {
                    global.msc = 0
                    obj_writer_set_halt(3)
                    global.msg[0] = scr_gettext("obj_reaperbird_488", string(global.monsteratk[myself]), string(global.monsterdef[myself]))
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    global.msg[0] = scr_gettext("obj_reaperbird_492", string(global.monsteratk[myself]), string(global.monsterdef[myself]))
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    global.msg[0] = scr_gettext("obj_reaperbird_496", string(global.monsteratk[myself]), string(global.monsterdef[myself]))
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    whatiheard = 9
                }
                else
                {
                    global.msc = 0
                    obj_writer_set_halt(3)
                    global.msg[0] = scr_gettext("obj_reaperbird_505")
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                if (pickon == 0)
                    global.msg[0] = scr_gettext("obj_reaperbird_514")
                if (pickon == 1)
                    global.msg[0] = scr_gettext("obj_reaperbird_516")
                pickon = 1
                if (pray == 1 && pickon == 1 && mystify == 1)
                {
                    mercymod = 999999
                    global.monstername[myself] = scr_gettext("monstername_54b")
                    global.msg[0] = scr_gettext("obj_reaperbird_523")
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                if (mystify == 0)
                    global.msg[0] = scr_gettext("obj_reaperbird_536")
                if (mystify == 1)
                    global.msg[0] = scr_gettext("obj_reaperbird_538")
                mystify = 1
                if (pray == 1 && pickon == 1 && mystify == 1)
                {
                    mercymod = 999999
                    global.monstername[myself] = scr_gettext("monstername_54b")
                    global.msg[0] = scr_gettext("obj_reaperbird_545")
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_reaperbird_557")
                if (xclean == 1)
                    global.msg[0] = scr_gettext("obj_reaperbird_559")
                obj_writer_set_halt(3)
                xclean = 1
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 2)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_reaperbird_569")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 5)
            {
                global.msc = 0
                if (pray == 0)
                    global.msg[0] = scr_gettext("obj_reaperbird_579")
                if (pray == 1)
                    global.msg[0] = scr_gettext("obj_reaperbird_581")
                pray = 1
                if (pray == 1 && pickon == 1 && mystify == 1)
                {
                    mercymod = 999999
                    global.monstername[myself] = scr_gettext("monstername_54b")
                    global.msg[0] = scr_gettext("obj_reaperbird_588")
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
