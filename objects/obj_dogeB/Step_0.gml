if (global.mnfight == 3)
    attacked = 0
scr_blconmatch()
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 70
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
        sprite_index = normalsprite
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
        global.turntimer = 110
        global.firingrate = 4
        if (((global.monster[0] + global.monster[1]) + global.monster[2]) == 3)
            mycommand = 2
        if (mycommand < 50)
        {
            global.firingrate = 13
            gen = instance_create((global.idealborder[1] - 50), (global.idealborder[3] - 45), blt_tinypom_leap)
            gen.dmg = global.monsteratk[myself]
            global.border = 8
            gen.bullettype = 0
        }
        if (mycommand >= 50)
        {
            global.firingrate = 13
            gen = instance_create((global.idealborder[1] - 50), (global.idealborder[3] - 45), blt_bluespear)
            gen.dmg = global.monsteratk[myself]
            global.border = 8
            gen.bullettype = 0
        }
        gen.myself = myself
        gen.dmg = global.monsteratk[myself]
        if (mycommand >= 0)
            global.msg[0] = "* Doge is pacing anxiously."
        if (mycommand >= 30)
            global.msg[0] = "* Doge paws at an imaginary&  door."
        if (mycommand >= 70)
            global.msg[0] = "* Doge is looking at you and&  whining."
        if (mycommand >= 90)
            global.msg[0] = "* Doge is wondering where she&  put her leash."
        if (mercymod >= 20)
            global.msg[0] = "* Doge is now primed for petting."
        if (mercymod >= 100)
            global.msg[0] = "* Doge looks satisfied."
        if (global.monsterhp[myself] < (global.monstermaxhp[myself] / 3))
            global.msg[0] = "* Doge needs a vet."
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
                global.msg[0] = "* DOGE - ATK 7 DEF 5&* Pronounced \"dohj.\" Soft j^1.&* Seems like she wants a walk./^"
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                global.msg[0] = "* You tried to bathe Doge^2,&  but she's perfectly clean.../^"
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 2)
            {
                if (mercymod <= 10)
                {
                    global.msc = 0
                    global.msg[0] = "* You go on a short walk with&  the Doge./^"
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    mercymod = 20
                }
                else
                {
                    global.msc = 0
                    global.msg[0] = "* The Doge seems all tuckered&  out./^"
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = "* You called Doge over.&* Doge came close./^"
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                if (mercymod == 0)
                    mercymod = 10
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                global.msg[0] = "* Dry a dry doge?&* Your mind boggles at this&  impossibility./^"
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 5)
            {
                if (mercymod >= 20)
                {
                    global.msc = 0
                    global.msg[0] = "* You pet the Doge.&* What a good Doge./^"
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    mercymod = 100
                }
                else
                {
                    global.msc = 0
                    global.msg[0] = "* Doge seems too dangerous&  to pet..^1.&* For now./^"
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
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
