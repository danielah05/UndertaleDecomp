if (active == true)
{
    attacktimer += 1
    timer += 1
    if (attacktimer >= attacktimermax)
    {
        with (obj_fx_bgen)
            event_user(2)
        attacktimer = -100
        if (timer < (maxtimer - 70))
        {
            attacktimer = -100
            event_user(1)
        }
    }
    if (timer == atimer)
    {
        fightbt = instance_create(320, 420, obj_flowey_fightbt)
        alarm[5] = 110
        if (global.battlephase == 6)
        {
            alarm[5] = 79
            atimer += 80
        }
    }
    if (timer >= maxtimer && phase_s == 0 && global.battlephase < 6)
    {
        if instance_exists(obj_flowey_fightbt)
        {
            with (obj_flowey_fightbt)
                instance_destroy()
        }
        phase_s = 1
        alarm[4] = 155
        with (obj_flowey_master)
        {
            if (mustype == 3)
            {
                caster_stop(all)
                caster_play(mus_endnote, 1, 1)
                mustype = 0
            }
            caster_play(mus_alarm, 1, 1)
        }
        with (obj_floweyx_tv)
            tvmode = 1
        if (global.soul_rescue == 0)
        {
            with (obj_floweypipetest)
                flash = true
        }
        if (global.soul_rescue == 1)
        {
            with (obj_floweypipetest)
                flash = 2
        }
        if (global.soul_rescue == 2)
        {
            with (obj_floweypipetest_2)
                flash = true
        }
        if (global.soul_rescue == 3)
        {
            with (obj_floweypipetest_2)
                flash = 2
        }
        if (global.soul_rescue == 4)
        {
            with (obj_floweypipetest_3)
                flash = true
        }
        if (global.soul_rescue == 5)
        {
            with (obj_floweypipetest_3)
                flash = 2
        }
    }
    if (phase_s == 2)
    {
        with (obj_floweyx_tv)
            tvmode = 2
        with (obj_vsflowey_heart)
            move = 0
        with (obj_flowey_master)
        {
            caster_stop(all)
            caster_loop(mus_noise, 1, 1)
            event_user(6)
        }
        idealhx = 314
        idealhy = 400
        if (global.soul_rescue == 2)
            idealhy = 450
        nowhx = obj_vsflowey_heart.x
        nowhy = obj_vsflowey_heart.y
        nowhxadd = ((idealhx - nowhx) / 40)
        nowhyadd = ((idealhy - nowhy) / 40)
        phase_s = 3
        alarm[4] = 40
    }
    if (phase_s == 3)
    {
        obj_vsflowey_heart.x += nowhxadd
        obj_vsflowey_heart.y += nowhyadd
    }
    if (phase_s == 4)
    {
        obj_vsflowey_heart.x = idealhx
        obj_vsflowey_heart.y = idealhy
        obj_vsflowey_heart.move = 1
        with (obj_floweyx_tv)
            tvmode = 3
        with (obj_flowey_master)
        {
            caster_stop(-3)
            caster_loop(mus_soul[global.soul_rescue], 1, 1)
        }
        if (global.soul_rescue == 0)
            instance_create(0, 0, obj_6knife_act)
        if (global.soul_rescue == 1)
        {
            instance_create((room_width * 0.5), 0, obj_6glove_boss)
            instance_create((room_width * 0), -120, obj_6glove_boss)
            instance_create((room_width * 1), -120, obj_6glove_boss)
            instance_create((room_width * 0.5), -400, obj_6glove_boss)
            instance_create((room_width * 0), -520, obj_6glove_boss)
            instance_create((room_width * 1), -520, obj_6glove_boss)
            lg = instance_create((room_width * 0.5), -800, obj_6glove_boss)
            with (lg)
                event_user(6)
            instance_create((room_width * 0), -920, obj_6glove_boss)
            instance_create((room_width * 1), -920, obj_6glove_boss)
        }
        if (global.soul_rescue == 2)
            instance_create(0, 0, obj_6shoe_master)
        if (global.soul_rescue == 3)
            instance_create(0, 0, obj_6book_master)
        if (global.soul_rescue == 4)
        {
            instance_create(190, 260, obj_6pan)
            ppp = instance_create(415, 260, obj_6pan)
            ppp.spec = 1
            instance_create(640, 260, obj_6pan)
        }
        if (global.soul_rescue == 5)
            instance_create((room_width / 2), (room_height / 2), obj_6gun)
        if (global.soul_rescue > 5)
            instance_create(0, 0, obj_6knife_act)
        phase_s = 5
    }
    if (phase_s == 5)
    {
        soultimer += 1
        if (soultimer >= soulmax)
        {
            idealhx = 314
            idealhy = 400
            if (global.soul_rescue == 6)
                idealhy = 280
            nowhx = obj_vsflowey_heart.x
            nowhy = obj_vsflowey_heart.y
            nowhxadd = ((idealhx - nowhx) / 40)
            nowhyadd = ((idealhy - nowhy) / 40)
            obj_vsflowey_heart.move = 0
            with (obj_floweyx_tv)
                tvmode = 2
            with (obj_6parent)
                instance_destroy()
            with (obj_flowey_master)
            {
                caster_stop(-3)
                caster_loop(mus_noise, 1, 1)
            }
            phase_s = 6
            alarm[4] = 20
            with (obj_floweypipetest)
                flash = false
            with (obj_floweypipetest_2)
                flash = false
            with (obj_floweypipetest_3)
                flash = false
            if (global.soul_rescue == 6)
            {
                phase_s = 20
                alarm[4] = 40
            }
            global.battlephase += 1
            if (global.battlephase >= 6)
                global.battlephase = 0
        }
    }
    if (phase_s == 6 || phase_s == 8)
    {
        obj_vsflowey_heart.x += nowhxadd
        obj_vsflowey_heart.y += nowhyadd
    }
    if (phase_s == 7)
    {
        with (obj_flowey_master)
            event_user(6)
        phase_s = 8
        alarm[4] = 20
    }
    if (phase_s == 9)
    {
        obj_vsflowey_heart.x = idealhx
        obj_vsflowey_heart.y = idealhy
        obj_vsflowey_heart.move = 1
        phase_s = 10
    }
    if (phase_s == 10)
    {
        with (obj_floweyx_tv)
            tvmode = 0
        with (obj_flowey_master)
            caster_stop(-3)
        instance_create(0, 0, obj_flowey_bulletmaster)
        instance_destroy()
    }
    if (phase_s == 20 || phase_s == 24 || phase_s == 26)
    {
        obj_vsflowey_heart.x += nowhxadd
        obj_vsflowey_heart.y += nowhyadd
    }
    if (phase_s == 21)
    {
        obj_vsflowey_heart.x = idealhx
        obj_vsflowey_heart.y = idealhy
        obj_vsflowey_heart.move = 1
        with (obj_floweyx_tv)
            tvmode = 5
        caster_stop(-3)
        instance_create(0, 0, obj_6soul_helpcutscene)
        with (obj_flowey_master)
            caster_play(mus_finale1_l, 1, 1)
        alarm[4] = 308
        alarm[4] = 615
        phase_s = 22
    }
    if (phase_s == 23)
    {
        idealhx = 314
        idealhy = 400
        nowhx = obj_vsflowey_heart.x
        nowhy = obj_vsflowey_heart.y
        nowhxadd = ((idealhx - nowhx) / 40)
        nowhyadd = ((idealhy - nowhy) / 40)
        obj_vsflowey_heart.move = 0
        with (obj_floweyx_tv)
            tvmode = 2
        with (obj_flowey_master)
            caster_loop(mus_noise, 1, 1)
        phase_s = 24
        alarm[4] = 20
        global.battlephase = 6
    }
    if (phase_s == 25)
    {
        with (obj_flowey_master)
            event_user(6)
        phase_s = 26
        alarm[4] = 20
    }
    if (phase_s == 27)
    {
        obj_vsflowey_heart.x = idealhx
        obj_vsflowey_heart.y = idealhy
        obj_vsflowey_heart.move = 1
        phase_s = 10
        global.msg[0] = scr_gettext("obj_flowey_bulletmaster_562")
        global.msg[2] = scr_gettext("obj_flowey_bulletmaster_564")
        global.typer = 113
        var text_x = 180
        if (global.language == "ja")
            text_x = 112
        instance_create(text_x, 300, obj_flowey_writer)
        with (obj_floweybodyparent)
            desperate = 0
        with (obj_floweybodyparent)
            wimpy = 1
        with (obj_floweyx_flipeye)
            memorymode = 0
        with (obj_floweyx_lefteye)
            memorymode = 0
    }
    if (timer > (maxtimer + 120))
    {
        if instance_exists(obj_floweybullet_parent)
        {
            with (obj_floweybullet_parent)
                instance_destroy()
        }
        with (obj_floweyx_flipeye)
        {
            md = 0
            con = 0
        }
        with (obj_floweyx_lefteye)
        {
            md = 0
            con = 0
        }
    }
}
