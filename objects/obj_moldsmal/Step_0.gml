if (image_yscale < 0.9)
    scalevalue = 0.01
if (image_yscale > 1.1)
    scalevalue = -0.01
image_yscale += scalevalue
y -= (102 * scalevalue)
if (global.mnfight == 3)
    attacked = 0
scr_blconmatch()
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 60
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
        image_index = 0
        scalevalue = 0.01
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
        global.turntimer = 120
        if (mycommand >= 0 && mycommand <= 50)
        {
            global.firingrate = 15
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = (global.firingrate * 2)
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
                global.firingrate = (global.firingrate * 1.5)
            gen = instance_create(0, 0, obj_1sidegen)
            gen.bullettype = 3
        }
        else
        {
            global.firingrate = 30
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
                global.firingrate = (global.firingrate * 2)
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
                global.firingrate = (global.firingrate * 1.5)
            gen = instance_create(0, 0, obj_1sidegen)
            gen.bullettype = 2
        }
        gen.myself = myself
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_moldsmal_391")
        if (mycommand >= 30)
            global.msg[0] = scr_gettext("obj_moldsmal_392")
        if (mycommand >= 70)
            global.msg[0] = scr_gettext("obj_moldsmal_393")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_moldsmal_394")
        if (global.monsterhp[myself] < 15)
            global.msg[0] = scr_gettext("obj_moldsmal_395")
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
                global.msg[0] = scr_gettext("obj_moldsmal_412")
                if (global.monsteratk[myself] > 6)
                    global.msg[0] = scr_gettext("obj_moldsmal_413")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                FL_SparedMoldsmal = 1
                global.msc = 0
                global.msg[0] = scr_gettext("obj_moldsmal_422")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                mercymod = 101
            }
            if (whatiheard == 1)
            {
                FL_SparedMoldsmal = 1
                global.msc = 0
                global.msg[0] = scr_gettext("obj_moldsmal_434")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                mercymod = 101
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
