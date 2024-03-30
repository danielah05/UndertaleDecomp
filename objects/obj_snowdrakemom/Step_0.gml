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
        global.turntimer = 100
        global.firingrate = 10
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.5)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.8)
        gen = instance_create(x, y, obj_clawfailuregen)
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_snowdrakemom_387")
        if (mycommand >= 25)
            global.msg[0] = scr_gettext("obj_snowdrakemom_388")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_snowdrakemom_389")
        if (mycommand >= 75)
            global.msg[0] = scr_gettext("obj_snowdrakemom_390")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_snowdrakemom_391")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_snowdrakemom_392")
        if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_snowdrakemom_393")
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
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_snowdrakemom_426")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_snowdrakemom_435")
                global.msg[1] = scr_gettext("obj_snowdrakemom_436")
                if (xlaugh == 1)
                    global.msg[0] = scr_gettext("obj_snowdrakemom_439")
                xlaugh = 1
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_snowdrakemom_451")
                global.msg[1] = scr_gettext("obj_snowdrakemom_452")
                if (xheckle == 1)
                    global.msg[0] = scr_gettext("obj_snowdrakemom_455")
                xheckle = 1
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                if (joke == 0)
                    global.msg[0] = scr_gettext("obj_snowdrakemom_467")
                if (joke == 1)
                    global.msg[0] = scr_gettext("obj_snowdrakemom_469")
                if (joke == 2)
                {
                    global.msg[0] = scr_gettext("obj_snowdrakemom_472")
                    mercymod = 22222
                }
                joke += 1
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
if (mercymod == 22222 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        instance_destroy()
}
if (sinepitcher == 1)
{
    siner += 1
    caster_set_pitch(global.batmusic, (pitch + (sin((siner / 2)) * 0.01)))
}
