x = (mypart1.x - 60)
y = mypart1.y
if (global.mnfight == 3)
{
    attacked = 0
    global.hope = 0
}
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
        if (mypart1.specialnormal == 0)
            alarm[6] = 16
        else
            alarm[6] = 1
        with (mypart1)
        {
            if (specialnormal == 0)
            {
                snd_play(snd_spearappear)
                s_s = 0
                if (aligncon == 0)
                    aligncon = 1
            }
        }
        if (turns == 2 || turns == 6 || turns == 10)
        {
            with (mypart1)
                s_s = 1
        }
        talked = true
        global.heard = 0
    }
}
if (say == 1)
{
    if (instance_exists(blconwd) == false)
    {
        event_user(1)
        say = 0
    }
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
        if (mypart1.specialnormal == 1)
        {
            global.turntimer = 140
            global.firingrate = 6
            gen = instance_create(0, 0, obj_1sidegen)
            gen.myself = myself
            gen.dmg = 8
            if (global.hope == 1)
            {
                gen.dmg = 6
                global.monsteratk[myself] = 6
            }
            if (global.hope == 0)
            {
                gen.dmg = 8
                global.monsteratk[myself] = 8
            }
            gen.bullettype = 7
        }
        else
        {
            if (turns >= 8)
                mypart1.h_mode = 1
            if (turns == 0 || turns == 4 || turns == 9)
            {
                with (mypart1)
                {
                    starcon = 1
                    type = 0
                }
            }
            if (turns == 1 || turns == 3 || turns == 8 || turns == 12)
            {
                with (mypart1)
                {
                    starcon = 1
                    type = 1
                }
            }
            if (turns == 2 || turns == 6 || turns == 10)
            {
                with (mypart1)
                {
                    bladecon = 1
                    type = 1
                }
            }
            if (turns == 5 || turns == 7 || turns == 11)
            {
                with (mypart1)
                {
                    guncon = 1
                    type = 1
                }
            }
            if (turns == 13)
            {
                with (mypart1)
                {
                    gonercon = 1
                    type = 1
                    global.hope = 2
                }
            }
            turns += 1
            if (FL_AsrielTurnCounter < turns)
                FL_AsrielTurnCounter = turns
        }
        if (turns == 0 || turns == 4)
            global.msg[0] = scr_gettext("obj_asrielb_541")
        if (turns == 1 || turns == 3)
            global.msg[0] = scr_gettext("obj_asrielb_542")
        if (turns == 2 || turns == 6)
            global.msg[0] = scr_gettext("obj_asrielb_543")
        if (turns == 5 || turns == 7)
            global.msg[0] = scr_gettext("obj_asrielb_544")
        if (turns == 9)
            global.msg[0] = scr_gettext("obj_asrielb_545")
        if (turns == 10)
            global.msg[0] = scr_gettext("obj_asrielb_546")
        if (turns == 8 || turns == 12)
            global.msg[0] = scr_gettext("obj_asrielb_547")
        if (turns == 11)
            global.msg[0] = scr_gettext("obj_asrielb_548")
        if (turns == 13)
            global.msg[0] = scr_gettext("obj_asrielb_549")
        if (turns == 14)
            global.msg[0] = scr_gettext("obj_asrielb_550")
        if (mypart1.specialnormal == 1)
            global.msg[0] = scr_gettext("obj_asrielb_551")
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
                if (mypart1.specialnormal == 1)
                    global.msg[0] = scr_gettext("obj_asrielb_585")
                if (mypart1.specialnormal == 0)
                    global.msg[0] = scr_gettext("obj_asrielb_587")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.hope = 1
                global.msg[0] = scr_gettext("obj_asrielb_597")
                if (hoped > 0)
                    global.msg[0] = scr_gettext("obj_asrielb_598")
                hoped += 1
                if (global.hp < global.maxhp)
                {
                    global.hp += 1
                    snd_play(snd_heal_c)
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                repeat (8)
                    scr_itemget(Items.Dream)
                global.msg[0] = scr_gettext("obj_asrielb_614")
                global.msg[1] = scr_gettext("obj_asrielb_615")
                if (dreamed > 0)
                    global.msg[0] = scr_gettext("obj_asrielb_618")
                if (global.hp < global.maxhp)
                {
                    global.hp += 4
                    if (global.hp > global.maxhp)
                        global.hp = global.maxhp
                    snd_play(snd_heal_c)
                }
                dreamed += 1
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
if (global.mnfight == 5)
{
    if (trcon == 0)
    {
        blcon = instance_create((x + 120), y, obj_blconwdflowey)
        global.msg[0] = scr_gettext("obj_asrielb_669")
        global.msg[1] = scr_gettext("obj_asrielb_670")
        global.msg[2] = scr_gettext("obj_asrielb_671")
        global.msg[3] = scr_gettext("obj_asrielb_672")
        global.msg[4] = scr_gettext("obj_asrielb_673")
        global.msc = 0
        global.typer = 68
        global.typer = 86
        blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
        trcon = 1
    }
    if (trcon == 1)
    {
        if instance_exists(OBJ_WRITER)
        {
            if (OBJ_WRITER.stringno == 1)
                caster_set_volume(global.currentsong, 0.75)
            if (OBJ_WRITER.stringno == 2)
                caster_set_volume(global.currentsong, 0.5)
            if (OBJ_WRITER.stringno == 3)
                caster_set_volume(global.currentsong, 0.25)
            if (OBJ_WRITER.stringno == 4)
                caster_set_volume(global.currentsong, 0)
        }
        if (instance_exists(blconwd) == false)
        {
            with (obj_asriel_body)
                transform = 1
            caster_free(all)
            bright = caster_load("music/sfx/sfx_spellcast.ogg")
            caster_play(bright, 0.24, 0.2)
            caster_play(bright, 0.24, 0.3)
            caster_play(bright, 0.24, 0.4)
            caster_play(bright, 0.24, 0.5)
            caster_play(bright, 0.24, 0.6)
            caster_play(bright, 0.24, 0.65)
            shakeamt = 0
            trcon = 2
            alarm[10] = 67
            with (blcon)
                instance_destroy()
            sw = instance_create(0, 0, obj_screenwhiter)
            sw.ex = 1
        }
    }
    if (trcon == 2)
    {
        if (shakeamt < 9)
            shakeamt += 0.25
        view_xview_set(0, ((0 + random(shakeamt)) - random(shakeamt)))
        view_yview_set(0, ((0 + random(shakeamt)) - random(shakeamt)))
    }
    if (trcon == 3)
    {
        view_xview_set(0, 0)
        view_yview_set(0, 0)
        trcon = 6
        alarm[10] = 150
    }
    if (trcon == 7)
    {
        caster_free(all)
        FL_InBattle = true
        global.battlegroup = 256
        room_restart()
    }
}
