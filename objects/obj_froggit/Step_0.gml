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
        mypart1 = instance_create(x, y, obj_froghead)
        mypart2 = instance_create(x, y, obj_froglegs)
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
        global.turntimer = 100
        global.firingrate = 20
        if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
            global.firingrate = (global.firingrate * 1.5)
        if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 2)
            global.firingrate = (global.firingrate * 1.25)
        if (mycommand >= 0 && mycommand <= 40)
        {
            if (((global.monster[0] + global.monster[1]) + global.monster[2]) > true)
                gen = instance_create(x, y, obj_1sidegen)
            else
                gen = instance_create((global.idealborder[1] - 40), (global.idealborder[3] - 40), blt_leapfrog)
            gen.dmg = global.monsteratk[myself]
        }
        else
        {
            gen = instance_create(x, y, obj_1sidegen)
            gen.bullettype = 1
        }
        gen.myself = myself
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_froggit_184")
        if (mycommand >= 30)
            global.msg[0] = scr_gettext("obj_froggit_185")
        if (mycommand >= 60)
            global.msg[0] = scr_gettext("obj_froggit_186")
        if (mycommand >= 80)
            global.msg[0] = scr_gettext("obj_froggit_187")
        if (mercymod > 5)
            global.msg[0] = scr_gettext("obj_froggit_188")
        if (global.monsterhp[myself] < 5)
            global.msg[0] = scr_gettext("obj_froggit_189")
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
                global.msg[0] = scr_gettext("obj_froggit_205")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_froggit_214")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                mercymod = 30
            }
            if (whatiheard == 3)
            {
                FL_SparedFroggit = 1
                global.msc = 0
                global.msg[0] = scr_gettext("obj_froggit_225")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                mercymod = 30
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
