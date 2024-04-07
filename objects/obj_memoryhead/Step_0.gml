if (global.mnfight == 3)
{
    with (object_index)
    {
        attacked = 0
        with (mypart1)
        {
            if (mega == 4)
                mega = 2
        }
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
        if (mycommand >= 0)
        {
            with (obj_freakbulletgen)
                instance_destroy()
            gen = instance_create(x, y, obj_freakbulletgen)
            gen.dmg = global.monsteratk[myself]
        }
        else
            gen = instance_create((((global.idealborder[0] + global.idealborder[1]) / 2) - 30), (global.idealborder[2] + 2), obj_vulkincloudbul)
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_memoryhead_420")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_memoryhead_421")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_memoryhead_422")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_memoryhead_423")
        if (mycommand >= 95)
            global.msg[0] = scr_gettext("obj_memoryhead_424")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_memoryhead_425")
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_memoryhead_426")
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
            if (coherent == 0)
            {
                if (whatiheard == 0)
                {
                    global.msc = 0
                    global.msg[0] = scr_gettext("obj_memoryhead_461")
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    whatiheard = 9
                }
                if (whatiheard == 3)
                {
                    global.msc = 0
                    scr_itemget(Items.BadMemory)
                    if (noroom == 0)
                        global.msg[0] = scr_gettext("obj_memoryhead_472")
                    if (noroom == 1)
                        global.msg[0] = scr_gettext("obj_memoryhead_474")
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
                if (whatiheard == 1)
                {
                    global.msc = 0
                    global.msg[0] = scr_gettext("obj_memoryhead_484", string((global.at + global.wstrength)), string((global.df + global.adef)))
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
                if (whatiheard == 4)
                {
                    global.msc = 0
                    global.msg[0] = scr_gettext("obj_memoryhead_493")
                    with (object_index)
                    {
                        coherent = 1
                        global.monstername[myself] = scr_gettext("monstername_56b")
                    }
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
            }
            else
            {
                if (whatiheard == 0)
                {
                    global.msc = 0
                    global.msg[0] = scr_gettext("obj_memoryhead_511")
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
                    global.myfight = 0
                    global.mnfight = 1
                    object_index.mercymod = 999998
                }
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
