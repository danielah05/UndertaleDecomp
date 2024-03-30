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
        alarm[5] = 120
        alarm[6] = 3
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
        if (scr_monstersum() == 1)
        {
            global.turntimer = 200
            gen1 = instance_create(x, y, blt_whiteax)
            gen = instance_create(x, y, blt_whiteax)
            gen.dmg = 7
            gen1.dmg = 7
            gen1.myself = myself
            gen.myself = myself
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_womandog_472")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_womandog_473")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_womandog_474")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_womandog_475")
        if (smell == 1)
            global.msg[0] = scr_gettext("obj_womandog_476")
        if (smell == 2)
            global.msg[0] = scr_gettext("obj_womandog_477")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_womandog_478")
        if (mercymod > 900)
            global.msg[0] = scr_gettext("obj_womandog_479")
        if (scr_monstersum() == 1)
            global.msg[0] = scr_gettext("obj_womandog_480")
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
                global.msg[0] = scr_gettext("obj_womandog_496")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                if (smell == 0)
                {
                    global.msg[0] = scr_gettext("obj_womandog_504")
                    global.msg[1] = scr_gettext("obj_womandog_505")
                }
                if (smell == 1)
                {
                    global.msg[0] = scr_gettext("obj_womandog_506")
                    global.msg[1] = scr_gettext("obj_womandog_507")
                }
                if (smell >= 2)
                    global.msg[0] = scr_gettext("obj_womandog_508")
                if (scr_monstersum() == 1)
                    global.msg[0] = scr_gettext("obj_womandog_509")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                if (smell == 1)
                    obj_dogeparent.smell = 2
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                if (scr_monstersum() == 1)
                    global.msg[0] = scr_gettext("obj_womandog_519")
                else
                {
                    if (smell < 2)
                        global.msg[0] = scr_gettext("obj_womandog_522")
                    if (smell == 2 || smell == 3)
                    {
                        global.msg[0] = scr_gettext("obj_womandog_523")
                        smell = 3
                    }
                    if (smell == 3 && obj_mandog.smell == 3)
                    {
                        obj_dogeparent.mercymod = 999
                        FL_SparedDogCouple = 1
                    }
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_womandog_533")
                global.msg[1] = scr_gettext("obj_womandog_534")
                if (smell == 0)
                    obj_dogeparent.smell = 1
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
