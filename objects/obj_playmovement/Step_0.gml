if (con == 1)
{
    FL_MenuDisabled = true
    global.msc = 0
    global.typer = 27
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_playmovement_206")
    instance_create(0, 0, obj_dialoguer)
    con = 2
    ossafe_ini_open("undertale.ini")
    ini_write_real("Mett", "O", 1)
    ossafe_ini_close()
    ossafe_savedata_save()
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    view_yview_set(0, (view_yview_get(0) - 3))
    if (obj_mainchara.y < 238)
        obj_mainchara.y += 0.5
    if (view_yview_get(0) <= 0)
    {
        con = 9
        alarm[4] = 30
    }
}
if (con > 10)
{
    if (obj_mainchara.x != obj_mainchara.xprevious || obj_mainchara.y != obj_mainchara.yprevious)
        mainmove += 1
    if (global.facing != face2)
        frantic += 1
    face2 = global.facing
}
if (mainmove == 100)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_1")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 300)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_2")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 500)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_3")
    if (unfrantic > 15)
        gm.sting = scr_gettext("mett_operacomment_3_unfrantic")
    if (touch > 300)
        gm.sting = scr_gettext("mett_operacomment_3_touch")
    if (frantic > 100)
        gm.sting = scr_gettext("mett_operacomment_3_frantic1")
    if (frantic > 200)
        gm.sting = scr_gettext("mett_operacomment_3_frantic2")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 700)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_4")
    if (unfrantic > 20)
        gm.sting = scr_gettext("mett_operacomment_4_unfrantic")
    if (touch > 400)
        gm.sting = scr_gettext("mett_operacomment_4_touch")
    if (frantic > 120)
        gm.sting = scr_gettext("mett_operacomment_4_frantic")
    if (frantic > 300)
        gm.sting = scr_gettext("mett_operacomment_4_frantic2")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 900)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_5")
    if (unfrantic > 25)
        gm.sting = scr_gettext("mett_operacomment_5_unfrantic")
    if (touch > 500)
        gm.sting = scr_gettext("mett_operacomment_5_touch")
    if (frantic > 140)
        gm.sting = scr_gettext("mett_operacomment_5_frantic")
    if (frantic > 400)
        gm.sting = scr_gettext("mett_operacomment_5_frantic2")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 1100)
{
    gm = instance_create(100, 340, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_6")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 1300)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_7")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (mainmove == 1500)
{
    gm = instance_create(70, 335, obj_songwriter)
    gm.sting = scr_gettext("mett_operacomment_8")
    gm.myfont = fnt_maintext
    mainmove += 1
}
if (con == 10)
{
    obj_mainchara.y = 280
    opera1 = caster_load("music/mettmusical1.ogg")
    opera2 = caster_load("music/mettmusical2.ogg")
    opera3 = caster_load("music/mettmusical3.ogg")
    opera4 = caster_load("music/mettmusical4.ogg")
    mett = instance_create(144, 112, obj_mettaton_dress1)
    mett.image_angle = -45
    mett.hspeed = 1.5
    alarm[4] = 14
    con = 11
}
if (con == 12)
{
    mett.hspeed = 0
    con = 13
    alarm[4] = 30
}
if (con == 14)
{
    wall1 = instance_create(0, 220, obj_kitchenforcefield)
    wall1.canttalk = 1
    wall1.image_yscale = 7
    wall2 = instance_create(300, 220, obj_kitchenforcefield)
    wall2.canttalk = 1
    wall2.image_yscale = 7
    global.msg[0] = scr_gettext("obj_playmovement_348")
    di = instance_create(0, 0, obj_dialoguer)
    di.side = 1
    con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
    con = 18
    mett.hspeed = 2.5
    alarm[4] = 15
}
if (con == 18)
{
    if (mett.image_angle < 0)
        mett.image_angle += 3
}
if (con == 19)
{
    mett.hspeed = 0
    con = 20
    alarm[4] = 30
}
if (con == 21)
{
    global.msg[0] = scr_gettext("obj_playmovement_375")
    if (already == 1)
        global.msc = 870
    di = instance_create(0, 0, obj_dialoguer)
    di.side = 1
    con = 26
}
if (con == 26 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    caster_play(opera1, 1, 1)
    mett.sprite_index = spr_mettaton_pulldress
    mett.image_speed = 0.25
    mett.hspeed = 1
    alarm[4] = 80
    con = 27
}
if (con == 28)
{
    mett.hspeed = 0
    mett.vspeed = 1
    alarm[4] = 130
    con = 29
}
if (con == 29)
    view_yview_set(0, (view_yview_get(0) + 1))
if (con == 30)
{
    mett.vspeed = 0
    mett.hspeed = 0
    mett.image_speed = 0
    con = 31
    alarm[4] = 30
}
if (con == 32)
{
    mett.image_speed = 0.1
    mett.vspeed = 0.2
    mett.hspeed = -0.5
    alarm[4] = 180
    con = 33
}
if (con == 34)
{
    mett2 = instance_create(mett.x, mett.y, obj_mettaton_dress2)
    with (mett)
        instance_destroy()
    mett = mett2
    mett.arm = 8
    alarm[4] = 60
    con = 35
}
if (con == 36)
{
    global.interact = 0
    caster_play(opera2, 1, 1)
    mett.arm = 0
    mett.hspeed = 0.5
    mett.vspeed = 0.4
    con = 38
    alarm[4] = 60
    drawtext = 1
}
if (con == 39)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 40
    alarm[4] = 50
}
if (con == 41)
{
    drawtext = 0
    drawtext2 = 1
    mett.arm = 1
    mett.hspeed = -0.25
    mett.vspeed = 0
    con = 42
    alarm[4] = 60
}
if (con == 43)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 44
    alarm[4] = 70
}
if (con == 45)
{
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_3")
    string2 = scr_gettext("mett_opera1_4")
    strtime1 = 60
    strtime2 = 60
    mett.arm = 0
    mett.vspeed = -0.5
    mett.hspeed = -1.5
    con = 46
    alarm[4] = 60
}
if (con == 47)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 48
    alarm[4] = 45
}
if (con == 49)
{
    drawtext2 = 1
    drawtext = 0
    mett.vspeed = 0.5
    mett.hspeed = -0.5
    mett.arm = 2
    con = 50
    alarm[4] = 60
}
if (con == 51)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 52
    alarm[4] = 75
}
if (con == 53)
{
    caster_play(opera2, 1, 1)
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_5")
    string2 = scr_gettext("mett_opera1_6")
    strtime1 = 57
    strtime2 = 57
    mett.arm = 0
    mett.hspeed = -0.5
    con = 54
    alarm[4] = 60
}
if (con == 55)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 56
    alarm[4] = 45
}
if (con == 57)
{
    mett.hspeed = 1
    mett.arm = 1
    drawtext2 = 1
    drawtext = 0
    con = 58
    alarm[4] = 60
}
if (con == 59)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 60
    alarm[4] = 75
}
if (con == 61)
{
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_7")
    string2 = scr_gettext("mett_opera1_8")
    strtime1 = 63
    strtime2 = 63
    mett.arm = 0
    mett.hspeed = -0.25
    con = 62
    alarm[4] = 60
}
if (con == 63)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 64
    alarm[4] = 45
}
if (con == 65)
{
    mett.hspeed = -0.5
    mett.arm = 3
    drawtext2 = 1
    drawtext = 0
    con = 66
    alarm[4] = 60
}
if (con == 67)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 68
    cher = instance_create(0, 0, obj_cherrygen)
    alarm[4] = 75
}
if (con == 69)
{
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_9")
    string2 = scr_gettext("mett_opera1_10")
    strtime1 = 60
    strtime2 = 60
    mett.arm = 0
    caster_play(opera3, 1, 1)
    mett.hspeed = 0.25
    con = 70
    alarm[4] = 60
}
if (con == 71)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 72
    alarm[4] = 45
}
if (con == 73)
{
    mett.hspeed = 0.25
    mett.arm = 1
    drawtext2 = 1
    drawtext = 0
    con = 74
    alarm[4] = 60
}
if (con == 75)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 75.5
    alarm[4] = 75
}
if (con == 76.5)
{
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_11")
    string2 = scr_gettext("mett_opera1_12")
    strtime1 = 60
    strtime2 = 84
    mett.arm = 4
    mett.hspeed = 0.25
    con = 77
    alarm[4] = 60
}
if (con == 78)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 79
    alarm[4] = 30
}
if (con == 80)
{
    mett.hspeed = 0
    mett.vspeed = -0.5
    mett.arm = 5
    drawtext2 = 1
    drawtext = 0
    con = 81
    alarm[4] = 60
}
if (con == 82)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 83
    alarm[4] = 90
}
if (con == 84)
{
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_13")
    string2 = scr_gettext("mett_opera1_14")
    strtime1 = 60
    strtime2 = 66
    mett.arm = 6
    caster_play(opera4, 1, 1)
    mett.hspeed = 0.75
    con = 85
    alarm[4] = 100
}
if (con == 86)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 87
    alarm[4] = 5
}
if (con == 88)
{
    mett.hspeed = 0.4
    mett.vspeed = 0.6
    mett.arm = 7
    drawtext2 = 1
    drawtext = 0
    con = 89
    alarm[4] = 60
}
if (con == 90)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 91
    alarm[4] = 75
}
if (con == 92)
{
    drawtext = 1
    drawtext2 = 0
    string1 = scr_gettext("mett_opera1_15")
    string2 = scr_gettext("mett_opera1_16")
    strtime1 = 54
    strtime2 = 90
    mett.arm = 8
    mett.hspeed = -0.5
    con = 93
    alarm[4] = 60
}
if (con == 94)
{
    with (cher)
        instance_destroy()
    mett.hspeed = 0
    mett.vspeed = 0
    con = 95
    alarm[4] = 30
}
if (con == 96)
{
    mett.hspeed = 0
    mett.vspeed = 0
    mett.arm = 9
    drawtext2 = 1
    drawtext = 0
    con = 97
    alarm[4] = 60
}
if (con == 98)
{
    mett.hspeed = 0
    mett.vspeed = 0
    con = 99
    alarm[4] = 120
}
if (con == 100)
{
    comet = instance_create(90, 150, obj_npc_marker)
    comet.sprite_index = spr_shootingstar
    comet.image_speed = 0.25
    comet.visible = true
    drawtext2 = 0
    con = 105
    alarm[4] = 60
}
if (con == 105)
{
    if instance_exists(comet)
    {
        if (comet.image_index > 8)
        {
            with (comet)
                instance_destroy()
        }
    }
}
if (con == 106)
{
    caster_stop(opera1)
    mett.speed = 0
    mett.image_speed = 0
    global.interact = 1
    global.msg[0] = scr_gettext("obj_playmovement_791")
    global.msg[1] = scr_gettext("obj_playmovement_792")
    if (skip == true)
    {
        global.msg[0] = scr_gettext("obj_playmovement_795")
        global.msg[1] = scr_gettext("obj_playmovement_796")
        global.msg[2] = scr_gettext("obj_playmovement_797")
        global.msg[3] = scr_gettext("obj_playmovement_798")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 120
}
if (con == 120 && instance_exists(OBJ_WRITER) == false)
{
    mett.hspeed = 1
    if (mett.x < (obj_mainchara.x + 19))
        mett.hspeed = -1
    if (skip == true)
        mett.hspeed = -3
    caster_free(all)
    mett.arm = 10
    con = 121
    alarm[4] = 30
}
if (con == 122)
{
    mett.hspeed = 0
    mett.arm = 11
    con = 123
    global.msg[0] = scr_gettext("obj_playmovement_821")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 123 && instance_exists(obj_dialoguer) == false)
{
    mett.arm = 12
    blackbox = instance_create((obj_mainchara.x - 4), (obj_mainchara.y + 10), obj_npc_marker)
    blackbox.sprite_index = spr_pixblk
    blackbox.image_speed = 0
    blackbox.image_xscale = 12
    blackbox.image_yscale = 14
    blackbox.depth = 1000000
    blackbox.visible = true
    snd_play(snd_noise)
    alarm[4] = 20
    con = 124
}
if (con == 125)
{
    global.phasing = 1
    alarm[5] = 2
    con = 126
    alarm[4] = 30
}
if (con == 126)
{
    obj_mainchara.y += 3
    obj_mainchara.image_alpha -= 0.05
}
if (con == 127)
{
    instance_create(0, 0, obj_unfader)
    alarm[6] = 12
    con = 128
    global.plot = 167
}
if (con == 240 && instance_exists(OBJ_WRITER) == false)
{
    skip = true
    con = 241
}
if (con == 241 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    caster_play(opera1, 0.5, 3)
    mett.sprite_index = spr_mettaton_pulldress
    mett.image_speed = 0.5
    mett.hspeed = 4
    alarm[4] = 20
    con = 242
}
if (con == 243)
{
    mett.hspeed = 0
    mett.vspeed = 5
    alarm[4] = 32
    con = 244
}
if (con == 244)
    view_yview_set(0, (view_yview_get(0) + 4))
if (con == 245)
{
    mett2 = instance_create(mett.x, mett.y, obj_mettaton_dress2)
    with (mett)
        instance_destroy()
    mett = mett2
    mett.arm = 8
    con = 106
}
