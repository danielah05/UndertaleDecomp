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
        global.turntimer = 160
        global.firingrate = 25
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.4)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.7)
        if (mycommand >= 0 && mycommand <= 50)
        {
            global.turntimer = 160
            gen = instance_create(x, y, obj_muscbulgen)
            if (pop > 1)
                gen.offset = 1
            gen.dmg = global.monsteratk[myself]
        }
        else
        {
            global.firingrate = 5
            if (pop == 3)
                global.firingrate = (global.firingrate * 2.7)
            if (pop == 2)
                global.firingrate = (global.firingrate * 1.8)
            gen = instance_create(x, y, obj_sweatbulgen)
            gen.bullettype = 0
        }
        gen.myself = myself
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_aaron_478")
        if (mycommand >= 0 && FL_AaronWoshuaEvent == 1)
            global.msg[0] = scr_gettext("obj_aaron_479")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_aaron_480")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_aaron_481")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_aaron_482")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_aaron_483")
        if (flex > 0)
            global.msg[0] = scr_gettext("obj_aaron_484")
        if (global.monsterhp[myself] < 30)
            global.msg[0] = scr_gettext("obj_aaron_486")
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
                global.msg[0] = scr_gettext("obj_aaron_502")
                global.msg[1] = scr_gettext("obj_aaron_503")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_aaron_512")
                mercymod = -10
                if (FL_AaronWoshuaEvent == 1)
                {
                    global.msg[0] = scr_gettext("obj_aaron_514")
                    mercymod = 222
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                if (flex == 0)
                    global.msg[0] = scr_gettext("obj_aaron_524")
                if (flex == 1)
                    global.msg[0] = scr_gettext("obj_aaron_525")
                if (flex == 2)
                {
                    global.msg[0] = scr_gettext("obj_aaron_526")
                    mercymod = 400
                    FL_SparedAaron = 1
                }
                global.msg[1] = scr_gettext("obj_aaron_527")
                flex += 1
                if (global.at < 150)
                    global.at += 15
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                global.monsteratk[myself] += 1
            }
            global.heard = 1
        }
    }
}
if (whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
    {
        vspeed = -4
        mypart1.vspeed = -4
    }
}
if (whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        instance_destroy()
}
if (alphaup == 1 && image_alpha < 1)
    image_alpha += 0.05
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
