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
        attacked = 0
        alarm[5] = 80
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
}
if control_check_pressed(InteractButton)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0])
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
        global.turntimer = 1
        global.firingrate = 1
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_dummymonster_394")
        if (mycommand >= 50)
            global.msg[0] = scr_gettext("obj_dummymonster_395")
        global.mnfight = 3
        if (global.turn > 6)
        {
            if (outside == 0)
            {
                global.msg[0] = scr_gettext("obj_dummymonster_400")
                FL_BoredLast = true
                alarm[7] = 2
                global.mnfight = 2
                global.typer = 1
                global.msc = 0
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
            }
        }
        attacked = 1
    }
}
if (whatiheard == 0)
{
    if (instance_exists(OBJ_WRITER) == false)
    {
        global.mnfight = 1
        global.myfight = 0
    }
}
if (whatiheard == 3)
{
    if (instance_exists(OBJ_WRITER) == false)
    {
        FL_SparedLast = true
        global.monster[myself] = false
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
                global.msg[0] = scr_gettext("obj_dummymonster_437")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_dummymonster_445")
                global.msg[1] = scr_gettext("obj_dummymonster_446")
                global.msg[2] = scr_gettext("obj_dummymonster_447")
                FL_DummyStatus = 2
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
        scr_mercystandard()
}
