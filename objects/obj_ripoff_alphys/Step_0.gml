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
        if (pop == 3)
            global.firingrate = (global.firingrate * 2.5)
        if (pop == 2)
            global.firingrate = (global.firingrate * 1.8)
        global.turntimer = 10
        if (turns == 1)
        {
            global.attacktype = 36
            instance_create(0, 0, obj_mettattackgen)
        }
        if (turns == 0)
        {
            global.specialdam[1] = 0
            global.attacktype = 40
            instance_create(0, 0, obj_mettattackgen)
        }
        global.msg[0] = scr_gettext("obj_ripoff_alphys_473")
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
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_alphys_508")
                global.msg[1] = scr_gettext("obj_ripoff_alphys_509")
                if (mercyno >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_alphys_512")
                    saved = 1
                    global.mnfight = 5
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_alphys_525")
                global.msg[1] = scr_gettext("obj_ripoff_alphys_526")
                if (mercyno >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_alphys_529")
                    saved = 1
                    global.mnfight = 5
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_alphys_543")
                global.msg[1] = scr_gettext("obj_ripoff_alphys_544")
                if (mercyno >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_alphys_547")
                    saved = 1
                    global.mnfight = 5
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 4)
            {
                global.msc = 0
                mercyno += 1
                global.msg[0] = scr_gettext("obj_ripoff_alphys_560")
                global.msg[1] = scr_gettext("obj_ripoff_alphys_561")
                if (mercyno >= 3)
                {
                    global.msg[1] = scr_gettext("obj_ripoff_alphys_564")
                    saved = 1
                    global.mnfight = 5
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
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        instance_destroy()
}
if (global.mnfight == 5 && instance_exists(OBJ_WRITER) == false)
{
    if (saved == 1)
    {
        if (global.hp < global.maxhp)
        {
            global.hp = global.maxhp
            snd_play(snd_heal_c)
        }
        with (obj_strangetangle)
            instance_destroy()
        instance_create(0, 0, obj_flasher)
        snd_play(snd_break2)
        saved = 2
        alarm[11] = 3
    }
    if (saved == 3)
    {
        global.faceemotion = 5
        global.msc = 0
        global.typer = 74
        part1.noanim = 1
        part1.spearalpha = 0
        global.msg[0] = scr_gettext("obj_ripoff_alphys_628")
        scr_blcon_x((x + 110), y)
        saved = 4
    }
    if (saved == 4 && instance_exists(OBJ_WRITER) == false)
    {
        instance_create(-10, -10, obj_screenwhiter)
        saved = 5
        instance_create(0, 0, obj_screenwhiter)
        alarm[11] = 34
    }
    if (saved == 6)
    {
        global.battlegroup = BattleGroup.AsrielFinal
        FL_SavedAlphysLostSoul = 1
        room_restart()
    }
}
