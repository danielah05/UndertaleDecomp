if (myinteract == 1 && con == 0)
{
    snd_play(snd_noise)
    obj_bluelaser_o.hspeed = -6
    obj_bluelaser_o.active = true
    obj_bluelaser_o.rememberhspeed = 6
    con = 1
    sprite_index = spr_onoffswitch_on
    fader = 1
    with (obj_kitchenforcefield)
        canttalk = 1
    ff2 = instance_create(160, 80, obj_kitchenforcefield)
    ff2.image_yscale = 5
    global.plot = 180
}
if (fader == 1)
{
    if instance_exists(ff)
    {
        with (ff)
        {
            canttalk = 1
            if instance_exists(solid1)
            {
                with (solid1)
                    instance_destroy()
            }
            image_alpha -= 0.1
        }
        if (ff.image_alpha < 0.1)
        {
            with (ff)
                instance_destroy()
        }
    }
}
if (pcon == 40)
{
    if (obj_mainchara.x > 540 && global.interact == 0 && pcon == 40)
    {
        global.interact = 1
        pcon = 41
        snd_play(snd_phone)
        global.msg[0] = scr_gettext("obj_core_laserswitch_118")
        global.msg[1] = scr_gettext("obj_core_laserswitch_119")
        global.msg[2] = scr_gettext("obj_core_laserswitch_120")
        global.msg[3] = scr_gettext("obj_core_laserswitch_121")
        global.msg[4] = scr_gettext("obj_core_laserswitch_122")
        global.msg[5] = scr_gettext("obj_core_laserswitch_123")
        global.msg[6] = scr_gettext("obj_core_laserswitch_124")
        global.msg[7] = scr_gettext("obj_core_laserswitch_125")
        global.msg[8] = scr_gettext("obj_core_laserswitch_126")
        if (remhp > global.hp)
        {
            global.msg[0] = scr_gettext("obj_core_laserswitch_130")
            global.msg[1] = scr_gettext("obj_core_laserswitch_131")
            global.msg[2] = scr_gettext("obj_core_laserswitch_132")
            global.msg[3] = scr_gettext("obj_core_laserswitch_133")
            global.msg[4] = scr_gettext("obj_core_laserswitch_134")
            global.msg[5] = scr_gettext("obj_core_laserswitch_135")
            global.msg[6] = scr_gettext("obj_core_laserswitch_136")
            global.msg[7] = scr_gettext("obj_core_laserswitch_137")
            global.msg[8] = scr_gettext("obj_core_laserswitch_138")
        }
        scr_regulartext()
    }
}
if (pcon == 41 && instance_exists(OBJ_WRITER) == false)
{
    global.plot = 181
    pcon = 42
    global.interact = 0
}
