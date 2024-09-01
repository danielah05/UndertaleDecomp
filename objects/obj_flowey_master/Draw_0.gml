draw_set_color(c_white)
scr_setfont(fnt_maintext)
var textscale = 3
if (global.language == "ja")
    textscale = 2
savetimer -= 1
loadtimer -= 1
if (savetimer > 0)
{
    draw_set_color(c_yellow)
    sta = ((10 + savetimer) / 20)
    if (sta > 1)
        sta = 1
    draw_set_alpha(sta)
    if (fileset == 2)
        draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_save", "2")), textscale, textscale, 0)
    if (fileset == 3)
        draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_save", "3")), textscale, textscale, 0)
    if (fileset == 6)
        draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_save", "6")), textscale, textscale, 0)
}
if (loadtimer > 0)
{
    sta = ((10 + loadtimer) / 20)
    if (sta > 1)
        sta = 1
    draw_set_alpha(sta)
    if (fileset == 3 || fileset == 4 || fileset == 5 || fileset == 6)
    {
        if (fileset == 3)
            draw_text_transformed((20 + flx), (430 + fly), string_hash_to_newline(scr_gettext("flowey_load", "3")), textscale, textscale, 0)
        if (fileset == 4)
            draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_load", "4")), textscale, textscale, 0)
        if (fileset == 5)
            draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_load_failed")), textscale, textscale, 0)
        if (fileset == 6)
            draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_load", "6")), textscale, textscale, 0)
    }
    else
        draw_text_transformed(20, 430, string_hash_to_newline(scr_gettext("flowey_load", "2")), textscale, textscale, 0)
}
if (darkmode == 1)
{
    obj_vsflowey_heart.depth = -25
    if (darkvalue < 1)
        darkvalue += 0.05
    draw_set_alpha(darkvalue)
    if (darkvalue == 1)
        darkmode = 2
}
if (darkmode == 3)
{
    if (darkvalue > 0)
        darkvalue -= 0.05
    else
    {
        obj_vsflowey_heart.depth = 10
        darkmode = 0
        darkvalue = 0
    }
    draw_set_alpha(darkvalue)
}
if (darkmode > 0)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle(-20, -20, 700, 500)
}
draw_set_alpha(1)
if (pd == 1)
{
    if (soulpitch > 0)
    {
        soulpitch -= 0.02
        caster_set_pitch(mus_soul[global.soul_rescue], soulpitch)
        caster_set_volume(mus_soul[global.soul_rescue], soulpitch)
    }
    else
    {
        caster_stop(mus_soul[global.soul_rescue])
        soulpitch = 1
        pd = -1
    }
}
if (drawhp == 1)
{
    draw_set_color(c_maroon)
    ossafe_fill_rectangle(295, 450, 345, 470)
    draw_set_color(c_yellow)
    if (global.my_hp > 0)
        ossafe_fill_rectangle(295, 450, (295 + global.my_hp), 470)
}
if (dcon > 0)
{
    if (destroyercon == 1)
    {
        destroyercon = 2
        alarm[10] = 1
    }
    if (dcon == 2)
    {
        snd_play(snd_heavydamage)
        with (obj_floweyx_tv)
            event_user(1)
        dcon = 3
        alarm[4] = 30
    }
    if (dcon == 4)
    {
        snd_play(snd_heavydamage)
        with (obj_floweyx_tv)
            event_user(1)
        dcon = 5
        alarm[4] = 60
    }
    if (dcon == 6)
    {
        sfx_glock = caster_load("music/f_glock.ogg")
        sfx_shake = caster_load("music/f_destroyed.ogg")
        caster_loop(sfx_shake, 0.7, 0.9)
        lsh = instance_create(0, 0, obj_vsflowey_shaker)
        lsh.decay = 0
        dcon = 7
        alarm[4] = 45
    }
    if (dcon == 8)
    {
        dcon = 10
        global.typer = 116
        global.msg[0] = scr_gettext("obj_flowey_master_1067")
        global.msg[1] = scr_gettext("obj_flowey_master_1068")
        global.msg[2] = scr_gettext("obj_flowey_master_1069")
        global.msg[3] = scr_gettext("obj_flowey_master_1070")
        with (obj_flowey_writer)
            instance_destroy()
        tw = instance_create(writerx, 300, obj_flowey_writer)
    }
    if (dcon == 10)
    {
        if (instance_exists(tw) == false)
        {
            dcon = 11
            alarm[4] = 30
        }
    }
    if (dcon >= 2 && dcon <= 12)
    {
        with (obj_flowey_fightbt)
            instance_destroy()
    }
    if (dcon == 12)
    {
        global.soul_rescue = 0
        global.my_hp = 50
        loadtimer = 90
        fileset = 3
        global.my_hp = 50
        obj_vsflowey_heart.move = 1
        heartdepth = obj_vsflowey_heart.depth
        obj_vsflowey_heart.x = 314
        obj_vsflowey_heart.y = 422
        obj_vsflowey_heart.special = true
        obj_vsflowey_heart.sprite_index = spr_ourheart
        with (obj_floweyx_tv)
            tvmode = 10
        caster_stop(all)
        caster_play(sfx_glock, 1, 1)
        with (obj_flowey_writer)
            instance_destroy()
        view_xview_set(0, 0)
        view_yview_set(0, 0)
        with (obj_vsflowey_shaker)
            instance_destroy()
        with (obj_floweybodyparent)
        {
            siner = 0
            desperate = 0
            frozen = false
        }
        with (obj_floweydmgwriter)
        {
            dmg = 0
            apparenthp = global.floweymaxhp
        }
        dcon = 13
        alarm[4] = 90
    }
    if (dcon == 14)
    {
        global.typer = 117
        global.msg[0] = scr_gettext("obj_flowey_master_1124")
        with (obj_flowey_writer)
            instance_destroy()
        dcon = 15
        tw2 = instance_create(writerx, 300, obj_flowey_writer)
    }
    if (dcon == 15)
    {
        if (instance_exists(tw2) == false)
        {
            with (obj_floweydmgwriter)
                instance_destroy()
            dcon = 16
            alarm[4] = 15
        }
    }
    if (dcon == 17)
    {
        with (obj_floweyx_tv)
            tvmode = 20
        fileset = 3
        destroyercon = 1
        dcon = 18
    }
    if (dcon == 20)
    {
        with (obj_floweyx_tv)
            tvmode = 21
        obj_vsflowey_heart.move = 0
        dcon = 20.1
        alarm[4] = 50
    }
    if (dcon == 21.1)
    {
        obj_vsflowey_heart.move = 0
        sfg = instance_create((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), obj_spinbullet_final_gen)
        fileset = 6
        savetimer = 20
        dcon = 21
        alarm[4] = 40
    }
    if (dcon == 22)
    {
        obj_vsflowey_heart.move = 1
        mus_worry = caster_load("music/yourbestfriend_3.ogg")
        caster_loop(mus_worry, 0.85, 0.9)
        dcon = 23
        alarm[4] = 20
    }
    if (dcon == 24)
    {
        global.typer = 117
        global.msg[0] = scr_gettext("obj_flowey_master_1181")
        global.msg[1] = scr_gettext("obj_flowey_master_1182")
        global.msg[2] = scr_gettext("obj_flowey_master_1183")
        global.msg[3] = scr_gettext("obj_flowey_master_1184")
        global.msg[4] = scr_gettext("obj_flowey_master_1185")
        global.msg[5] = scr_gettext("obj_flowey_master_1186")
        global.msg[6] = scr_gettext("obj_flowey_master_1187")
        global.msg[7] = scr_gettext("obj_flowey_master_1188")
        global.msg[8] = scr_gettext("obj_flowey_master_1189")
        global.msg[9] = scr_gettext("obj_flowey_master_1190")
        global.msg[10] = scr_gettext("obj_flowey_master_1191")
        global.msg[11] = scr_gettext("obj_flowey_master_1192")
        global.msg[12] = scr_gettext("obj_flowey_master_1193")
        global.msg[13] = scr_gettext("obj_flowey_master_1194")
        global.msg[14] = scr_gettext("obj_flowey_master_1195")
        global.msg[15] = scr_gettext("obj_flowey_master_1196")
        global.msg[16] = scr_gettext("obj_flowey_master_1197")
        global.msg[17] = scr_gettext("obj_flowey_master_1198")
        with (obj_flowey_writer)
            instance_destroy()
        dcon = 25
        tw2 = instance_create(130, 280, obj_flowey_writer)
    }
    if (dcon == 25)
    {
        if instance_exists(obj_flowey_writer)
        {
            if (intent_hit > 20 && obj_flowey_writer.stringno < 2)
            {
                obj_flowey_writer.mystring[2] = scr_gettext("obj_flowey_master_1216")
                obj_flowey_writer.mystring[3] = scr_gettext("obj_flowey_master_1217")
                obj_flowey_writer.mystring[4] = scr_gettext("obj_flowey_master_1218")
            }
            if (obj_flowey_writer.stringno == 3)
            {
                with (obj_floweyx_tv)
                {
                    if (tvmode != 11)
                    {
                        tvmode = 11
                        overnoiser = 6
                    }
                }
            }
            if (obj_flowey_writer.stringno == 5)
            {
                with (obj_floweyx_tv)
                {
                    if (tvmode != 12)
                    {
                        tvmode = 12
                        overnoiser = 6
                    }
                }
            }
            if (obj_flowey_writer.stringno == 6)
            {
                with (obj_floweyx_tv)
                    tvmode = 13
            }
            if (obj_flowey_writer.stringno == 7)
            {
                with (obj_floweyx_tv)
                {
                    if (tvmode != 11)
                    {
                        tvmode = 11
                        overnoiser = 6
                    }
                }
            }
        }
        if (instance_exists(obj_flowey_writer) == false)
        {
            obj_spinbullet_huge.depth = 30
            ap = instance_create((obj_vsflowey_heart.x + 45), (obj_vsflowey_heart.y + 8), obj_centeract_parent)
            ap.sprite_index = scr_getsprite(spr_actbt_center_hole)
            ap.depth = 20
            dcon = 30
        }
    }
    if (dcon == 31)
    {
        with (obj_floweyx_tv)
            tvmode = 11
        global.faceemotion = 3
        global.typer = 118
        global.msg[0] = scr_gettext("obj_flowey_master_1260")
        global.msg[1] = scr_gettext("obj_flowey_master_1261")
        with (obj_flowey_writer)
            instance_destroy()
        tw2 = instance_create(130, 280, obj_flowey_writer)
        dcon = 33
        alarm[4] = 160
    }
    if (dcon == 34)
    {
        caster_stop(all)
        global.typer = 117
        global.msg[0] = scr_gettext("obj_flowey_master_1276")
        global.msg[1] = scr_gettext("obj_flowey_master_1277")
        global.msg[2] = scr_gettext("obj_flowey_master_1278")
        global.msg[3] = scr_gettext("obj_flowey_master_1279")
        global.msg[4] = scr_gettext("obj_flowey_master_1280")
        global.msg[5] = scr_gettext("obj_flowey_master_1281")
        with (obj_flowey_writer)
            instance_destroy()
        dcon = 35
        tw2 = instance_create(130, 280, obj_flowey_writer)
    }
    if (dcon == 35)
    {
        obj_vsflowey_heart.depth = heartdepth
		if instance_exists(obj_flowey_writer)
        {
            if (obj_flowey_writer.stringno == 4)
            {
                with (obj_floweyx_tv)
                {
                    if (tvmode != 21)
                    {
                        tvmode = 21
                        overnoiser = 6
                    }
                }
            }
        }
        if (instance_exists(obj_flowey_writer) == false)
        {
            with (obj_floweyx_tv)
                tvmode = 20
            caster_play(sfx_laugh, 1, 1)
            with (obj_spinbullet_final_gen)
                alarm[1] = 1
            with (obj_spinbullet_huge)
                trick = 1
            dcon = 36
        }
    }
    if (dcon == 40)
    {
        caster_stop(sfx_laugh)
        global.facemotion = 0
        with (obj_floweyx_tv)
            tvmode = 22
        dcon = 41
        alarm[4] = 120
    }
    if (dcon == 42)
    {
        global.typer = 117
        global.msg[0] = scr_gettext("obj_flowey_master_1320")
        global.msg[1] = scr_gettext("obj_flowey_master_1321")
        global.msg[2] = scr_gettext("obj_flowey_master_1322")
        global.msg[5] = scr_gettext("obj_flowey_master_1323")
        with (obj_flowey_writer)
            instance_destroy()
        dcon = 43
        tw2 = instance_create(130, 280, obj_flowey_writer)
    }
    if (dcon == 43)
    {
        if (instance_exists(obj_flowey_writer) == false)
        {
            global.faceemotion = 3
            fileset = 5
            loadtimer = 70
            dcon = 44
            alarm[4] = 100
        }
    }
    if (dcon == 45)
    {
        global.typer = 117
        global.msg[0] = scr_gettext("obj_flowey_master_1347")
        global.msg[1] = scr_gettext("obj_flowey_master_1348")
        global.msg[5] = scr_gettext("obj_flowey_master_1349")
        with (obj_flowey_writer)
            instance_destroy()
        dcon = 47
        tw2 = instance_create(130, 280, obj_flowey_writer)
    }
    if (dcon == 47)
    {
        if (instance_exists(obj_flowey_writer) == false)
        {
            with (obj_floweybodyparent)
                frozen = true
            instance_create(0, 0, obj_6flasher)
            snd_play(snd_break2_c)
            global.soul_rescue = 6
            dcon = 48
            alarm[4] = 45
            s6 = instance_create(0, 0, obj_6soul_lastcutscene)
        }
    }
    if (dcon == 49)
    {
        global.typer = 117
        global.msg[0] = scr_gettext("obj_flowey_master_1374")
        global.msg[1] = scr_gettext("obj_flowey_master_1375")
        global.msg[5] = scr_gettext("obj_flowey_master_1376")
        with (obj_flowey_writer)
            instance_destroy()
        dcon = 50
        tw2 = instance_create(130, 280, obj_flowey_writer)
    }
    if (dcon == 50)
    {
        if (instance_exists(obj_flowey_writer) == false)
        {
            with (obj_floweyx_tv)
                tvmode = 99
            instance_create(0, 0, obj_6flasher)
            snd_play(snd_break2_c)
            with (obj_floweybodyparent)
                frozen = true
            sh2 = instance_create(0, 0, obj_vsflowey_shaker)
            sh2.shakex = 10
            sh2.shakey = 10
            sh2.decay = 0
            with (s6)
                con = 1
            m_destroy = caster_load("music/f_destroyed3.ogg")
            caster_loop(m_destroy, 1, 1)
            global.typer = 117
            global.msg[0] = scr_gettext("obj_flowey_master_1401")
            global.msg[1] = scr_gettext("obj_flowey_master_1402")
            global.msg[2] = scr_gettext("obj_flowey_master_1403")
            global.msg[3] = scr_gettext("obj_flowey_master_1404")
            global.msg[4] = scr_gettext("obj_flowey_master_1405")
            with (obj_flowey_writer)
                instance_destroy()
            dcon = 51
            tw2 = instance_create(130, 280, obj_flowey_writer)
        }
    }
    if (dcon == 51)
    {
        if (instance_exists(obj_flowey_writer) == false)
        {
            with (obj_floweyx_tv)
                tvmode = 100
            global.typer = 115
            global.msg[0] = scr_gettext("obj_flowey_master_1422")
            global.msg[4] = scr_gettext("obj_flowey_master_1423")
            pp = 0
            with (obj_flowey_writer)
                instance_destroy()
            dcon = 52
            whiter_maker = 2
            tw2 = instance_create(130, 280, obj_flowey_writer)
        }
    }
    if (dcon == 52)
    {
        depth = -90
        pp += 0.008
        draw_set_alpha((pp / 1.5))
        draw_set_color(c_white)
        ossafe_fill_rectangle(-10, -10, 900, 900)
        caster_set_pitch(m_destroy, (1 + pp))
        caster_set_volume(m_destroy, (1 - (pp / 2)))
        draw_set_alpha(1)
        if (pp > 2)
        {
            ossafe_ini_open("undertale.ini")
            ini_write_real("FFFFF", "E", 1)
            ini_write_real("FFFFF", "F", 0)
            ossafe_ini_close()
            ossafe_savedata_save()
            if (global.osflavor == OSFlavors.PC)
            {
                if file_exists("flowey.exe")
                    file_rename("flowey.exe", "undertale.exe")
            }
            drkdrk = 0
            dcon = 53
        }
    }
    if (dcon == 53)
    {
        caster_stop(m_destroy)
        dcon = 54
        alarm[4] = 120
    }
    if (dcon == 54 || dcon == 55)
    {
        draw_set_color(c_white)
        ossafe_fill_rectangle(-10, -10, 900, 900)
        draw_set_color(c_black)
        drkdrk += 0.01
        draw_set_alpha(drkdrk)
        ossafe_fill_rectangle(-10, -10, 999, 999)
        draw_set_alpha(1)
        if (drkdrk >= 1.1)
        {
            drkdrk_px = scr_marker(-10, -10, spr_pixblk)
            drkdrk_px.image_xscale = 900
            drkdrk_px.image_yscale = 900
        }
    }
    if (dcon >= 51)
    {
        with (obj_floweybodyparent)
        {
            frozen = true
            siner += (1 + random(0.5))
            md = 1
            image_blend = old_make_color_hsv((abs(sin((siner / 30))) * 512), 255, 255)
            blend2 = old_make_color_hsv((abs(sin((siner / 30))) * 512), 255, 255)
            flash = -1
            x = ((xstart + random(15)) - random(15))
            y = ((ystart + random(15)) - random(15))
            if (object_index == obj_sidestalk)
            {
                y -= 80
                if (x > 320)
                    x -= 40
                if (x < 320)
                    x += 40
            }
        }
    }
}
if (introcon > 0)
{
    if (introcon == 1)
    {
        obj_vsflowey_heart.x = 314
        obj_vsflowey_heart.y = 422
        bgsiner = 0
        dividefactor = 1
        bganimer = 1
        if (introskip == 0)
        {
            mus_intro = caster_load("music/f_intro.ogg")
            caster_play(mus_intro, 1, 1)
        }
        view_yview_set(0, (view_yview_get(0) + 480))
        ny = view_yview_get(0)
        hy = obj_vsflowey_heart.y
        obj_vsflowey_heart.y += 480
        background_colour_set(c_maroon)
        obj_vsflowey_heart.move = 0
        obj_floweyx_tv.tvmode = 25
        obj_floweyx_tv.siner = 0
        with (obj_floweybodyparent)
        {
            desperate = 0
            image_blend = c_black
            grgrgrgr = 0
            blend2 = 0
            flash = 99
        }
        introcon = 2
        alarm[5] = 440
        if (introskip == 1)
            alarm[5] = 1
    }
    if (bganimer == 1)
    {
        bgsiner += 1
        background_colour_set(make_color_rgb(abs(((sin((bgsiner / 8)) * 130) / dividefactor)), 0, 0))
    }
    if (introcon == 2)
    {
        if (introskip == 0)
            ny -= (12/11)
        if (introskip == 1)
            ny -= 480
        view_yview_set(0, floor(ny))
        obj_vsflowey_heart.y = (hy + floor(ny))
    }
    if (introcon == 3)
    {
        dividefactor = 1
        obj_floweyx_tv.tvmode = 24
        introcon = 4
        alarm[5] = 70
        if (introskip == 1)
            alarm[5] = 1
        view_yview_set(0, 0)
        obj_vsflowey_heart.y = floor(obj_vsflowey_heart.y)
    }
    if (introcon == 5)
    {
        fadevalue = 0
        obj_floweyx_tv.tvmode = 19
        obj_vsflowey_heart.move = 1
        introcon = 5.1
        alarm[5] = 95
        if (introskip == 1)
            alarm[5] = 1
    }
    if (introcon == 6.1)
    {
        dividefactor += 9
        fadevalue += 1
        ib = make_color_rgb((fadevalue * 25.5), (fadevalue * 25.5), (fadevalue * 25.5))
        obj_floweybodyparent.image_blend = ib
        obj_floweybodyparent.blend2 = ib
        if (fadevalue >= 10)
        {
            background_colour_set(c_black)
            introcon = 7
            alarm[5] = 20
        }
        with (obj_floweybodyparent)
            frozen = 4
    }
    if (introcon == 8)
    {
        sh = instance_create(0, 0, obj_vsflowey_shaker)
        sh.decay = 0
        caster_stop(all)
        caster_play(sfx_laugh, 1, 1)
        obj_floweyx_mouth.laugh = 1
        obj_floweyx_tv.tvmode = 20
        introcon = 9
        alarm[5] = 180
    }
    if (introcon == 10)
    {
        with (sh)
            instance_destroy()
        view_xview_set(0, 0)
        view_yview_set(0, 0)
        obj_floweyx_mouth.laugh = 0
        obj_floweyx_tv.tvmode = 21
        introcon = 11
        alarm[5] = 20
    }
    if (introcon == 12)
    {
        with (obj_floweybodyparent)
        {
            frozen = false
            desperate = 1
        }
        event_user(10)
        obj_floweyx_tv.tvmode = 0
        introcon = -1
    }
    if (introskip == 1)
    {
        draw_set_color(c_black)
        draw_set_alpha(((10 - fadevalue) / 10))
        ossafe_fill_rectangle(-10, -10, 999, 999)
        if (fadevalue < 10)
            obj_floweyx_tv.tvmode = 26
        draw_set_alpha(1)
    }
}
if (turnturn == 0 && introcon == 2)
{
    turnturn = 1
    obj_floweybodyparent.visible = true
    draw_set_color(c_black)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_sprite(spr_ourheart, 0, obj_vsflowey_heart.x, obj_vsflowey_heart.y)
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    draw_set_color(c_yellow)
    draw_text((room_width - 60), (room_height - 40), string_hash_to_newline("debug"))
}
