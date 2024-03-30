if (global.mnfight == 3)
    attacked = 0
scr_blconmatch()
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 75
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
        global.hurtanim[myself] = 0
        sprite_index = normalgfx
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
        global.turntimer = 150
        if (mycommand < 50)
        {
            if (pop == 1)
                global.turntimer = 100
            gen = instance_create(0, (global.idealborder[2] + (((global.idealborder[3] - global.idealborder[2]) - 40) / 2)), obj_iceteeth)
        }
        if (mycommand >= 50)
        {
            pop = scr_monstersum()
            if instance_exists(obj_jerry)
            {
                if (obj_jerry.ditch == 0)
                    pop -= 1
            }
            global.firingrate = 33
            if (pop == 2)
                global.firingrate = 45
            if (pop == 3)
                global.firingrate = 60
            gen = instance_create(0, 0, obj_1sidegen)
            gen.bullettype = 11
        }
        gen.myself = myself
        gen.dmg = global.monsteratk[myself]
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_icecap_374")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_icecap_375")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_icecap_376")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_icecap_377")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_icecap_378")
        if (ignore == 1)
            global.msg[0] = scr_gettext("obj_icecap_379")
        if (ignore > 1)
            global.msg[0] = scr_gettext("obj_icecap_380")
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
            global.msg[0] = scr_gettext("obj_icecap_381")
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
                global.msg[0] = scr_gettext("obj_icecap_396")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                if (ignore > 0)
                {
                    global.msg[0] = scr_gettext("obj_icecap_406")
                    global.msg[1] = scr_gettext("obj_icecap_407")
                }
                if (ignore == 0)
                {
                    global.msg[0] = scr_gettext("obj_icecap_412")
                    global.msg[1] = scr_gettext("obj_icecap_413")
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_icecap_422")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                scr_mercystandard()
                global.msg[0] = scr_gettext("obj_icecap_431")
                global.msg[1] = scr_gettext("obj_icecap_432")
                if (mercy < 0)
                {
                    global.msg[1] = scr_gettext("obj_icecap_435")
                    m = 0
                    global.monster[myself] = false
                    if (global.monster[1] == 1 && global.monster[0] == 0)
                        m = 1
                    global.monster[1] = 0
                    global.monstertype[myself] = 20
                    cube = 1
                    global.monsterinstance[myself] = instance_create(x, y, obj_icecube)
                    if (m == 1)
                        global.monster[1] = 1
                    instance_destroy()
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
