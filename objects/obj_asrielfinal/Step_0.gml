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
    if (talked == true)
    {
        if (instance_exists(blconwd) == false)
            event_user(2)
    }
    if (talked == false)
    {
        event_user(3)
        talked = true
        global.heard = 0
    }
    if (talked == 2)
        talked = false
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
        if (FL_AsrielFightConvoCounter < 3)
            mypart1.ucon = 1
        else
        {
            if (turns == 0)
            {
                mypart1.u_gen = 2
                mypart1.ucon = 1
            }
            if (turns == 1)
            {
                mypart1.u_gen = 3
                mypart1.ucon = 1
            }
            if (turns == 2 || turns == 3 || turns == 4 || turns == 5)
            {
                global.turntimer = 120
                global.firingrate = 2
                gen = instance_create(0, 0, obj_1sidegen)
                gen.myself = myself
                gen.dmg = 1
                gen.bullettype = 9
            }
            if (turns == 6)
                mypart1.bcon = 1
            if (turns >= 7)
                mercymod = -12
            if (turns >= 11)
                mercymod = 999999
            turns += 1
        }
        global.msg[0] = scr_gettext("obj_asrielfinal_423")
        total = (((FL_SavedUndyneLostSoul + FL_SavedAlphysLostSoul) + FL_SavedPapyrusLostSoul) + FL_SavedTorielLostSoul)
        if (total == 1)
            global.msg[0] = scr_gettext("obj_asrielfinal_425")
        if (total == 2)
            global.msg[0] = scr_gettext("obj_asrielfinal_426")
        if (total == 3)
            global.msg[0] = scr_gettext("obj_asrielfinal_427")
        if (total == 4)
            global.msg[0] = scr_gettext("obj_asrielfinal_428")
        if (turns > 0)
            global.msg[0] = scr_gettext("obj_asrielfinal_429")
        attacked = 1
    }
    if (mercymod == -12 || mercymod == 999999)
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
            if (FL_AsrielFightConvoCounter > 2)
            {
                global.myfight = 0
                global.mnfight = 1
            }
            if (FL_AsrielFightConvoCounter == 2)
            {
                if (whatiheard == 0)
                {
                    global.msc = 0
                    savecon_a = 1
                    obj_writer_set_halt(3)
                    global.msg[0] = scr_gettext("obj_asrielfinal_468")
                    global.msg[1] = scr_gettext("obj_asrielfinal_469")
                    global.msg[2] = scr_gettext("obj_asrielfinal_470")
                    global.msg[3] = scr_gettext("obj_asrielfinal_471")
                    global.msg[4] = scr_gettext("obj_asrielfinal_472")
                    global.msg[5] = scr_gettext("obj_asrielfinal_473")
                    global.msg[6] = scr_gettext("obj_asrielfinal_474")
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    whatiheard = 9
                }
            }
            if (FL_AsrielFightConvoCounter == 1)
            {
                if (whatiheard == 0)
                {
                    global.msc = 0
                    if (FL_SavedUndyneLostSoul == 0)
                    {
                        event_user(0)
                        nextbattle = BattleGroup.LostSoulUndyne
                    }
                    else
                        event_user(1)
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                    whatiheard = 9
                }
                if (whatiheard == 3)
                {
                    global.msc = 0
                    if (FL_SavedAlphysLostSoul == 0)
                    {
                        event_user(0)
                        nextbattle = BattleGroup.LostSoulAlphys
                    }
                    else
                        event_user(1)
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
                if (whatiheard == 1 || whatiheard == 4)
                {
                    global.msc = 0
                    if (FL_SavedPapyrusLostSoul == 0)
                    {
                        event_user(0)
                        nextbattle = BattleGroup.LostSoulSansPapyrus
                    }
                    else
                        event_user(1)
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
                if (whatiheard == 2 || whatiheard == 5)
                {
                    global.msc = 0
                    if (FL_SavedTorielLostSoul == 0)
                    {
                        event_user(0)
                        nextbattle = BattleGroup.LostSoulTorielAsgore
                    }
                    else
                        event_user(1)
                    obj_writer_set_halt(3)
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = 0
                }
            }
            if (FL_AsrielFightConvoCounter == 0)
            {
                if (whatiheard == 0)
                {
                    if (global.tempvalue[12] >= 4)
                    {
                        with (mypart1)
                            darker = 1
                        songcon = 1
                        global.msc = 0
                        global.msg[0] = scr_gettext("obj_asrielfinal_552")
                        global.msg[1] = scr_gettext("obj_asrielfinal_553")
                        global.msg[2] = scr_gettext("obj_asrielfinal_554")
                        global.msg[3] = scr_gettext("obj_asrielfinal_555")
                        global.msg[4] = scr_gettext("obj_asrielfinal_556")
                        if (ossafe_file_exists("file0") == false)
                        {
                            global.msg[2] = scr_gettext("obj_asrielfinal_559")
                            global.msg[3] = scr_gettext("obj_asrielfinal_560")
                            global.msg[4] = scr_gettext("obj_asrielfinal_561")
                        }
                        global.msg[5] = scr_gettext("obj_asrielfinal_563")
                        global.msg[6] = scr_gettext("obj_asrielfinal_564")
                        global.msg[7] = scr_gettext("obj_asrielfinal_565")
                        global.msg[8] = scr_gettext("obj_asrielfinal_566")
                        obj_writer_set_halt(3)
                        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                        iii.depth = -1020
                        with (iii)
                            halt = 0
                        whatiheard = 9
                    }
                    else
                    {
                        global.tempvalue[12] += 1
                        global.msc = 0
                        global.msg[0] = scr_gettext("obj_asrielfinal_577")
                        obj_writer_set_halt(3)
                        iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                        with (iii)
                            halt = 0
                    }
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
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        instance_destroy()
}
if (songcon == 1)
{
    vol = caster_get_volume(global.batmusic)
    vol -= 0.04
    caster_set_volume(global.batmusic, vol)
    if (vol <= 0.04)
    {
        vol = 0
        caster_free(global.batmusic)
        songcon = 2
    }
}
if (songcon == 3)
{
    with (mypart1)
        darker = 0
    snd_play(snd_break2)
    songcon = -1
}
if (songcon == 2 && instance_exists(OBJ_WRITER) == false)
{
    global.heard = 0
    global.mercy = 1
    FL_AsrielFightConvoCounter = 1
    global.mnfight = 0
    global.myfight = 0
    global.bmenuno = 0
    instance_create(0, 0, obj_flasher)
    global.hp = global.maxhp
    obj_talkbt.spec = 1
    obj_talkbt.sprite_index = scr_getsprite(spr_savebt)
    songcon = 3
    global.batmusic = caster_load("music/xpart_2.ogg")
    caster_loop(global.batmusic, 0.8, 0.95)
    global.msg[0] = scr_gettext("obj_asrielfinal_648")
}
if (gocon == 1 && instance_exists(OBJ_WRITER) == false)
{
    if (gotimer == 0)
        instance_create(0, 0, obj_screenwhiter)
    gotimer += 1
    if (gotimer == 34)
    {
        global.battlegroup = nextbattle
        gocon = 0
        room_restart()
    }
}
if (savecon_a > 0)
{
    vol = caster_get_volume(global.batmusic)
    vol -= 0.04
    caster_set_volume(global.batmusic, vol)
    if (vol <= 0.04)
    {
        vol = 0
        caster_free(global.batmusic)
    }
    if (savecon_a == 1 && instance_exists(OBJ_WRITER) == false)
    {
        savecon_a = 2
        blcon = instance_create(400, 50, obj_blconwdflowey)
        global.msc = 0
        global.msg[0] = scr_gettext("obj_asrielfinal_674")
        global.faceemotion = 2
        global.typer = 86
        blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
        blcon.depth = -2000
        blconwd.depth = -2200
    }
    if (savecon_a == 2)
        savecon_a_x += 1
    if (savecon_a_x == 70)
    {
        sw = instance_create(0, 0, obj_screenwhiter)
        sw.ex = 1
    }
    if (savecon_a_x == 138)
        room_goto(room_asrielmemory)
}
if (endcon == 1)
{
    sw = instance_create(0, 0, obj_screenwhiter)
    sw.ex = 2
    endcon = 3
    alarm[11] = 136
}
