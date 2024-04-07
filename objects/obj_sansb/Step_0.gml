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
        alarm[5] = 15
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
}
if (talked == true && instance_exists(OBJ_WRITER))
{
    scr_textskip()
    if (alarm[5] <= 3)
        alarm[5] = 3
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
    global.hurtanim[myself] = 0
    mypart1.pause = 0
    global.myfight = 0
    global.mnfight = 1
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
if (global.mnfight == 2 && normalfight == 1)
{
    if (attacked == 0)
    {
        FL_FightingSans = 1
        if (global.sp < 5)
            global.sp = 5
        global.turntimer = 10
        timer_on = 1
        if (mercy_death == 0)
        {
            if (hit_try < 13)
            {
                obj_heart.movement = 2
                obj_heart.sprite_index = spr_heartblue
                if (part == 0)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 0
                        event_user(0)
                    }
                }
                if (part == 1)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 3
                        event_user(0)
                    }
                }
                if (part == 2)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 23
                        event_user(0)
                    }
                }
                if (part == 3)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 6
                        event_user(0)
                    }
                }
                if (part == 4)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 7
                        event_user(0)
                    }
                }
                if (part == 5)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 8
                        event_user(0)
                    }
                }
                if (part == 6)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 17
                        event_user(0)
                    }
                }
                if (part == 7)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 15
                        event_user(0)
                    }
                }
                if (part == 8)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 18
                        event_user(0)
                    }
                }
                if (part == 9)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 1
                        event_user(0)
                    }
                }
                if (part == 10)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 5
                        event_user(0)
                    }
                }
                if (part == 11)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 21
                        event_user(0)
                    }
                }
                if (part == 12)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 16
                        event_user(0)
                    }
                }
                if (part >= 13)
                {
                    b_choose = choose(0, 1, 2, 3)
                    if (b_choose == 0)
                    {
                        with (obj_sansb_body)
                        {
                            a_type = 1
                            event_user(0)
                        }
                    }
                    if (b_choose == 1)
                    {
                        with (obj_sansb_body)
                        {
                            a_type = 5
                            event_user(0)
                        }
                    }
                    if (b_choose == 2)
                    {
                        with (obj_sansb_body)
                        {
                            a_type = 21
                            event_user(0)
                        }
                    }
                    if (b_choose == 3)
                    {
                        with (obj_sansb_body)
                        {
                            a_type = 16
                            event_user(0)
                        }
                    }
                }
                if (global.border == 39)
                {
                    obj_heart.y = (global.idealborder[3] - 70)
                    obj_heart.vspeed = 2
                }
            }
            if (hit_try >= 14 && hit_try < 23 && nx == 1)
            {
                global.turntimer = 20
                timer_on = 0
                obj_heart.movement = 1
                obj_heart.sprite_index = spr_heart
                if (part == 0)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 12
                        event_user(0)
                    }
                    timer_on = 1
                }
                if (part == 1)
                {
                    shadow = instance_create(0, 0, obj_sansshadowgen)
                    shadow.level = 1
                    shadow.shadow_max = 5
                }
                if (part == 2)
                {
                    with (obj_sansb_body)
                    {
                        smasher = 1
                        smashlv = 0
                        smashcon = 0
                    }
                }
                if (part == 3)
                {
                    with (obj_sansb_body)
                    {
                        smasher = 1
                        smashlv = 1
                        smashcon = 0
                    }
                }
                if (part == 4)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 13
                        event_user(0)
                    }
                    timer_on = 1
                }
                if (part == 5)
                {
                    with (obj_sansb_body)
                    {
                        a_type = 22
                        event_user(0)
                    }
                    timer_on = 1
                }
                if (part == 6)
                {
                    shadow = instance_create(0, 0, obj_sansshadowgen)
                    with (shadow)
                        alarm[0] = 4
                    shadow.level = 2
                    shadow.shadow_max = 6
                }
                if (part == 7)
                {
                    with (obj_sansb_body)
                    {
                        smasher = 1
                        smashlv = 2
                        smashcon = 0
                    }
                }
                if (part >= 8)
                {
                    if (c_choose == 1)
                    {
                        with (obj_sansb_body)
                        {
                            smasher = 1
                            smashlv = 2
                            smashcon = 0
                        }
                    }
                    if (c_choose == 2)
                    {
                        shadow = instance_create(0, 0, obj_sansshadowgen)
                        with (shadow)
                            alarm[0] = 4
                        shadow.level = 2
                        shadow.shadow_max = 6
                    }
                    if (c_choose == 3)
                    {
                        with (obj_sansb_body)
                        {
                            a_type = 13
                            event_user(0)
                        }
                        timer_on = 1
                    }
                }
            }
            if (hit_try == 23)
            {
                global.border = -1
                with (obj_sansb_body)
                    lac = 4
                with (obj_borderparent)
                    instaborder = 1
                timer_on = 0
                obj_heart.x = round(((global.idealborder[0] + global.idealborder[1]) / 2))
                obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
            }
            if (hit_try == 14 && nx == 0)
            {
                nx = 1
                mercymod = -10000
                caster_resume(global.batmusic)
                part = -1
                shadow = instance_create(0, 0, obj_sansshadowgen)
                shadow.level = 0
                shadow.shadow_max = 5
                timer_on = 0
            }
        }
        else
        {
            mercymod = -999999
            timer_on = 0
            obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
            obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
            obj_heart.sprite_index = spr_heart
            obj_heart.movement = 1
            with (obj_sansb_body)
            {
                a_type = 20
                event_user(0)
            }
        }
        turns += 1
        part += 1
        if (hit_try < 4)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_954")
        }
        if (hit_try >= 4)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_956")
        }
        if (hit_try >= 8)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_958")
        }
        if (hit_try >= 13)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_960")
        }
        if (global.km > 0)
            global.msg[0] = scr_gettext("obj_sansb_962")
        if (global.km >= 10)
            global.msg[0] = scr_gettext("obj_sansb_963")
        if (global.km >= 20)
            global.msg[0] = scr_gettext("obj_sansb_964")
        if (global.km >= 30)
            global.msg[0] = scr_gettext("obj_sansb_965")
        if (hit_try == 15)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_969")
        }
        if (hit_try >= 19)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_971")
        }
        if (hit_try >= 20)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_973")
        }
        if (hit_try >= 21)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_975")
        }
        if (hit_try >= 22)
        {
            if (mycommand >= 0)
                global.msg[0] = scr_gettext("obj_sansb_977")
        }
        attacked = 1
    }
    if (mercymod == 999999)
    {
        obj_heart.speed = 0
        global.msg[0] = scr_gettext("obj_sansb_985")
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
                if (hit_try > 0)
                {
                    global.msg[0] = scr_gettext("obj_sansb_1013")
                    global.msg[1] = scr_gettext("obj_sansb_1014")
                }
                else
                    global.msg[0] = scr_gettext("obj_sansb_1018")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
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
            mercy_death = 1
    }
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        mercy_death = 1
}
if (con == 1 && skip == false)
{
    with (OBJ_WRITER)
        instance_destroy()
    global.mnfight = 99
    global.myfight = 99
    obj_heart.visible = false
    global.sp = 5
}
if (con == 1 && skip == true)
{
    global.mnfight = 99
    global.myfight = 99
    caster_loop(global.batmusic, 0.9, 0.95)
    global.sp = 5
    with (OBJ_WRITER)
        instance_destroy()
    with (mypart1)
        fac = 20
}
if (con == 2)
{
    global.msc = 0
    global.typer = 107
    global.msg[0] = scr_gettext("obj_sansb_1079")
    global.msg[1] = scr_gettext("obj_sansb_1080")
    global.msg[2] = scr_gettext("obj_sansb_1081")
    if (intro == 1)
    {
        global.msg[0] = scr_gettext("obj_sansb_1084")
        global.msg[1] = scr_gettext("obj_sansb_1085")
    }
    if (intro >= 2)
        global.msg[0] = scr_gettext("obj_sansb_1089")
    con = 3
    scr_blcon_x((x + 120), y)
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    con = 5
    alarm[4] = 10
    if (intro >= 1)
        alarm[4] = 2
}
if (con == 6)
{
    caster_stop(birdnoise)
    snd_play(snd_noise)
    blk = scr_marker(-10, -10, spr_pixblk)
    blk.image_xscale = 999
    blk.image_yscale = 999
    blk.depth = -9999
    global.bmenuno = 999
    with (obj_borderparent)
        instaborder = 1
    global.border = -1
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    obj_heart.x = (global.idealborder[0] + 75)
    obj_heart.y = (global.idealborder[2] + 75)
    con = 7
    alarm[4] = 8
    if (intro >= 1)
        alarm[4] = 2
}
if (con == 8)
{
    global.faceemotion = 5
    FL_FightingSans = 1
    obj_heart.visible = true
    with (blk)
        instance_destroy()
    snd_play(snd_noise)
    normalfight = 0
    global.myfight = -1
    global.mnfight = 2
    con = 9
    obj_borderparent.visible = true
    alarm[4] = 20
    if (intro >= 1)
    {
        con = 11
        alarm[4] = -1
    }
}
if (con == 10)
{
    global.typer = 108
    global.msg[0] = scr_gettext("obj_sansb_1152")
    con = 11
    scr_blcon_x((x + 120), (y - 30))
    blcon.sprite_index = spr_blconsm
}
if (con == 11 && instance_exists(OBJ_WRITER) == false)
{
    with (obj_sansb_body)
        fac = 1
    con = 12
}
if (p_cut == 1)
{
    caster_stop(cutsfx)
    caster_play(cutsfx, 0.8, 1.4)
    snd_stop(snd_arrow)
    snd_play(snd_arrow)
    p_cut = 0
}
if (p_power == 1)
{
    dopower = 0
    if (global.osflavor == OSFlavors.Mac && hit_try >= 23)
        dopower = 1
    if (dopower == 0)
    {
        caster_stop(beam_up_sfx)
        caster_play(beam_up_sfx, 0.8, 1.2)
    }
    p_power = 0
}
if (p_beam == 1)
{
    caster_stop(beamsfx)
    caster_play(beamsfx, 0.8, 1.2)
    if (global.osflavor != OSFlavors.Mac)
        caster_stop(beamsfx_a)
    caster_play(beamsfx_a, 0.6, 1.2)
    p_beam = 0
}
if (timer_on == 1)
{
    if (global.turntimer <= 0)
    {
        if (hit_try >= 15 && hit_try < 23)
            instance_create(0, 0, obj_menubone_maker)
        global.mnfight = 3
        global.movement = 0
        timer_on = 0
        with (obj_bonestab)
            instance_destroy()
        with (obj_sans_shaker)
            instance_destroy()
        with (obj_bonewall_normal)
            instance_destroy()
        with (obj_bonewall)
            instance_destroy()
        with (obj_boneplat)
            instance_destroy()
        with (obj_sans_bonebul)
            instance_destroy()
        with (obj_gasterblaster)
            instance_destroy()
        with (obj_boneloop_v)
            instance_destroy()
        with (obj_gasterbl_gen)
            instance_destroy()
        with (obj_3platgen)
            instance_destroy()
    }
}
if (drama == 1)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.stringno == 2)
        {
            d_music = caster_load("music/chokedup.ogg")
            caster_loop(d_music, 0.8, 0.9)
            drama = 2
        }
    }
}
if (global.debug == true && keyboard_check_pressed(ord("Q")))
{
    if (hit_try < 12)
    {
        hit_try = 12
        hit_reached = 11
    }
}
if (global.debug == true && keyboard_check_pressed(ord("E")))
{
    if (hit_try < 22)
    {
        hit_try = 22
        hit_reached = 21
    }
}
