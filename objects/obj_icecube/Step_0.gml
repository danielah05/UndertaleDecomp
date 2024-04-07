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
        if (scr_monstersum() == 1)
            global.turntimer = 5
        if (mycommand < 96)
        {
            gen = instance_create(0, (global.idealborder[2] + (((global.idealborder[3] - global.idealborder[2]) - 40) / 2)), obj_iceteeth)
            gen.toothdist = 500
        }
        if (mycommand >= 96)
        {
            global.firingrate = 15
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
                global.firingrate = 25
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = 35
            gen = instance_create(0, 0, obj_1sidegen)
            gen.bullettype = 11
        }
        gen.myself = myself
        gen.dmg = global.monsteratk[myself]
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_icecube_377")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_icecube_378")
        if (happy == 1)
            global.msg[0] = scr_gettext("obj_icecube_379")
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
            global.msg[0] = scr_gettext("obj_icecube_380")
        attacked = 1
    }
}
if (whatiheard == 1 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
    {
        killed = 1
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
                global.msg[0] = scr_gettext("obj_icecube_406")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_icecube_414")
                FL_SparedIcecap = 1
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                happy = 1
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
