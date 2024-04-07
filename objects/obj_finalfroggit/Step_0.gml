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
        global.turntimer = 150
        global.firingrate = 10
        if instance_exists(obj_astigmatism)
            global.firingrate += 5
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.8)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.8)
        if (mycommand >= 50 && pop == 1)
        {
            gen = instance_create(x, y, obj_frogbullet_gen)
            gen.dmg = global.monsteratk[myself]
        }
        else
        {
            gen = instance_create(x, y, obj_megaflybulletgen)
            gen.dmg = global.monsteratk[myself]
        }
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_finalfroggit_440")
        if (mycommand >= 30)
            global.msg[0] = scr_gettext("obj_finalfroggit_441")
        if (mycommand >= 60)
            global.msg[0] = scr_gettext("obj_finalfroggit_442")
        if (mycommand >= 80)
            global.msg[0] = scr_gettext("obj_finalfroggit_443")
        if (mercymod > 100)
            global.msg[0] = scr_gettext("obj_finalfroggit_444")
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 4))
            global.msg[0] = scr_gettext("obj_finalfroggit_445")
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
                global.msg[0] = scr_gettext("obj_finalfroggit_480")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_finalfroggit_489")
                global.monsteratk[myself] -= 2
                mercymod += 40
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_finalfroggit_501")
                global.monsterdef[myself] -= 20
                mercymod += 40
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                if (mercymod < 200)
                {
                    global.msg[0] = scr_gettext("obj_finalfroggit_514")
                    global.msg[1] = scr_gettext("obj_finalfroggit_515")
                    mercymod = 200
                }
                else
                    global.msg[0] = scr_gettext("obj_finalfroggit_520")
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
