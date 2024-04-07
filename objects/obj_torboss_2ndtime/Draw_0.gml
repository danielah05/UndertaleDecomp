draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
if (sprite_index == spr_torielboss_kneel)
    draw_sprite_ext(spr_torweird, global.faceemotion, (x + 48), (y + 58), 2, 2, 0, c_white, 1)
if (sprite_index == spr_torielside1 || sprite_index == spr_torielboss_side)
    draw_sprite_ext(spr_torweird, global.faceemotion, (x + 48), (y + 8), 2, 2, 0, c_white, 1)
if (con == 0)
{
    dogsong = caster_load("music/dogsong.ogg")
    caster_loop(dogsong, 0.6, 1)
    FL_AnimationIndex = 0
    tobdog = instance_create(640, 240, obj_hard_dog)
    tobdog.y -= tobdog.sprite_height
    tobdog.image_speed = 0.2
    tobdog.hspeed = -2
    con = 1
}
if (con == 1)
{
    if (tobdog.x < 480)
    {
        tobdog.hspeed = 0
        tobdog.image_speed = 0
        tobdog.image_index = 0
        tobdog.sprite_index = spr_tobdogl_talk
        con = 2
        alarm[4] = 50
    }
}
if (con == 3)
{
    ossafe_ini_open("undertale.ini")
    ini_write_real("General", "CH", 1)
    ossafe_ini_close()
    ossafe_savedata_save()
    global.faceemotion = 2
    tobdog.image_speed = 0.2
    global.msc = 0
    global.typer = 33
    global.msg[0] = scr_gettext("obj_torboss_2ndtime_153")
    scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
    blcon.sprite_index = spr_blconabove
    con = 4
}
if (con == 4)
{
    if (!instance_exists(blcon))
    {
        con = 5
        tobdog.image_speed = 0
        tobdog.image_index = 0
        alarm[4] = 20
    }
}
if (con == 6)
{
    global.typer = 8
    global.msg[0] = scr_gettext("obj_torboss_2ndtime_175")
    global.msg[1] = scr_gettext("obj_torboss_2ndtime_176")
    global.msg[2] = scr_gettext("obj_torboss_2ndtime_177")
    global.faceemotion = 1
    scr_blcon_ofs((x + 120), (y + 30), 0, 6, 0)
    con = 7
}
if (con == 7)
{
    if (!instance_exists(blcon))
    {
        con = 8
        tobdog.image_speed = 0.2
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_192")
        global.msg[1] = scr_gettext("obj_torboss_2ndtime_193")
        global.msg[2] = scr_gettext("obj_torboss_2ndtime_194")
        scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 8)
{
    if (!instance_exists(blcon))
    {
        FL_AnimationIndex = 1
        tobdog.image_speed = 0
        tobdog.image_index = 0
        con = 9
        global.faceemotion = 3
        global.typer = 8
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_211")
        scr_blcon_ofs((x + 120), (y + 30), 0, 6, 0)
    }
}
if (con == 9)
{
    if (!instance_exists(blcon))
    {
        con = 10
        tobdog.image_speed = 0.2
        global.faceemotion = 2
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_224")
        global.msg[1] = scr_gettext("obj_torboss_2ndtime_225")
        global.msg[2] = scr_gettext("obj_torboss_2ndtime_226")
        global.msg[3] = scr_gettext("obj_torboss_2ndtime_227")
        scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 10)
{
    if (!instance_exists(blcon))
    {
        global.faceemotion = 1
        tobdog.image_speed = 0
        tobdog.image_index = 0
        con = 11
        alarm[4] = 50
    }
}
if (con == 12)
{
    global.faceemotion = 0
    sprite_index = spr_torielside1
    con = 13
    alarm[4] = 50
}
if (con == 14)
{
    if (!instance_exists(blcon))
    {
        con = 14.1
        tobdog.image_speed = 0.2
        global.typer = 33
        FL_AnimationIndex = 0
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_264")
        global.msg[1] = scr_gettext("obj_torboss_2ndtime_265")
        scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 14.1)
{
    if (!instance_exists(blcon))
    {
        tobdog.image_speed = 0
        tobdog.image_index = 0
        con = 15
        global.faceemotion = 0
        global.typer = 8
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_280")
        scr_blcon_ofs((x + 120), (y + 30), 0, 6, 0)
    }
}
if (con == 15)
{
    if (!instance_exists(blcon))
    {
        con = 16
        tobdog.image_speed = 0.2
        global.typer = 33
        FL_AnimationIndex = 0
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_293")
        scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 16)
{
    if (!instance_exists(blcon))
    {
        tobdog.image_speed = 0
        tobdog.image_index = 0
        con = 17
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_308")
        global.msg[1] = scr_gettext("obj_torboss_2ndtime_309")
        global.typer = 8
        scr_blcon_ofs((x + 120), (y + 30), 0, 6, 0)
    }
}
if (con == 17)
{
    if (!instance_exists(blcon))
    {
        con = 18
        tobdog.image_speed = 0.2
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_324")
        global.msg[1] = scr_gettext("obj_torboss_2ndtime_325")
        global.msg[2] = scr_gettext("obj_torboss_2ndtime_326")
        scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 18)
{
    if (!instance_exists(blcon))
    {
        tobdog.image_speed = 0
        tobdog.image_index = 0
        global.faceemotion = 1
        con = 19
        alarm[4] = 90
    }
}
if (con == 20)
{
    hspeed = -3
    con = 21
    alarm[4] = 180
}
if (con == 22)
{
    if (!instance_exists(blcon))
    {
        con = 23
        tobdog.image_speed = 0.2
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_360")
        scr_blcon_ofs(400, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 23)
{
    if (!instance_exists(blcon))
    {
        tobdog.hspeed = -4
        tobdog.sprite_index = spr_tobdogl
        con = 24
        global.faceemotion = 0
        global.typer = 8
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_377")
        scr_blcon_ofs(0, (y + 30), 0, 6, 0)
    }
}
if (con >= 24 && con < 28)
{
    if (tobdog.x <= 320)
        tobdog.hspeed = 0
}
if (con == 24)
{
    if (!instance_exists(blcon))
    {
        con = 25
        tobdog.image_speed = 0.2
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_400")
        scr_blcon_ofs(230, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 25)
{
    if (!instance_exists(blcon))
    {
        con = 26
        global.faceemotion = 0
        global.typer = 8
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_415")
        scr_blcon_ofs(0, (y + 30), 0, 6, 0)
    }
}
if (con == 26)
{
    if (!instance_exists(blcon))
    {
        con = 27
        tobdog.image_speed = 0.2
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_429")
        global.msg[1] = scr_gettext("obj_torboss_2ndtime_430")
        global.msg[2] = scr_gettext("obj_torboss_2ndtime_431")
        global.msg[3] = scr_gettext("obj_torboss_2ndtime_432")
        scr_blcon_ofs(230, (tobdog.y - 120), 0, -10, 0)
        blcon.sprite_index = spr_blconabove
    }
}
if (con == 27)
{
    if (!instance_exists(blcon))
    {
        caster_stop(dogsong)
        in = caster_load("music/intronoise.ogg")
        mode = caster_load("music/mode.ogg")
        con = 28
        tobdog.hspeed = -4
        alarm[4] = 210
    }
}
if (con == 29)
{
    caster_play(in, 1, 1)
    draw_u = 1
    depth = -40000
    con = 30
    alarm[4] = 90
}
if (con == 31)
{
    caster_play(mode, 0.9, 1)
    draw_u = 2
    con = 32
    alarm[4] = 90
}
if (con == 33)
{
    caster_play(mode, 0.8, 1.2)
    draw_u = 3
    con = 34
    alarm[4] = 90
}
if (con == 35)
{
    caster_play(mode, 0.7, 1.6)
    draw_u = 4
    con = 36
    alarm[4] = 90
}
if (con == 37)
{
    caster_play(mode, 0.6, 2.2)
    draw_u = 5
    con = 38
    alarm[4] = 600
    global.faceemotion = 0
}
if (con == 39)
{
    draw_f = 1
    fx = 280
    fy = 340
    famt = 0
    con = 40
    alarm[4] = 90
}
if (con == 41)
{
    global.typer = 6
    global.msg[0] = scr_gettext("obj_torboss_2ndtime_512")
    global.msg[1] = scr_gettext("obj_torboss_2ndtime_513")
    global.msg[2] = scr_gettext("obj_torboss_2ndtime_514")
    global.msg[3] = scr_gettext("obj_torboss_2ndtime_515")
    global.msg[4] = scr_gettext("obj_torboss_2ndtime_516")
    global.msg[5] = scr_gettext("obj_torboss_2ndtime_517")
    global.msg[6] = scr_gettext("obj_torboss_2ndtime_518")
    global.msg[7] = scr_gettext("obj_torboss_2ndtime_519")
    global.msg[8] = scr_gettext("obj_torboss_2ndtime_520")
    global.msg[9] = scr_gettext("obj_torboss_2ndtime_521")
    global.msg[10] = scr_gettext("obj_torboss_2ndtime_522")
    scr_blcon_ofs((fx + 90), fy, 0, 6, 0)
    with (OBJ_WRITER)
        depth = -42100
    blcon.depth = -42000
    con = 42
}
if (con == 42)
{
    if (!instance_exists(blcon))
    {
        global.faceemotion = 0
        con = 42.1
        alarm[4] = 150
    }
}
if (con == 43.1)
{
    global.msg[0] = scr_gettext("obj_torboss_2ndtime_544")
    scr_blcon_ofs((fx + 90), fy, 0, 6, 0)
    with (OBJ_WRITER)
        depth = -42100
    blcon.depth = -42000
    con = 44
}
if (con == 44)
{
    if (!instance_exists(blcon))
    {
        global.faceemotion = 1
        con = 45
        global.typer = 8
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_558")
        scr_blcon_ofs(0, fy, 0, 6, 0)
        with (OBJ_WRITER)
            depth = -42100
        blcon.depth = -42000
    }
}
if (con == 45)
{
    if (!instance_exists(blcon))
    {
        con = 46
        alarm[4] = 30
    }
}
if (con == 47)
{
    global.typer = 6
    global.msg[0] = scr_gettext("obj_torboss_2ndtime_578")
    global.msg[1] = scr_gettext("obj_torboss_2ndtime_579")
    global.msg[2] = scr_gettext("obj_torboss_2ndtime_580")
    global.msg[3] = scr_gettext("obj_torboss_2ndtime_581")
    global.msg[4] = scr_gettext("obj_torboss_2ndtime_582")
    scr_blcon_ofs((fx + 90), fy, 0, 6, 0)
    with (OBJ_WRITER)
        depth = -42100
    blcon.depth = -42000
    con = 48
}
if (con == 48)
{
    if (!instance_exists(blcon))
    {
        con = 50
        global.typer = 33
        global.msg[0] = scr_gettext("obj_torboss_2ndtime_595")
        scr_blcon(0, fy, 0)
        with (OBJ_WRITER)
            depth = -42100
        blcon.depth = -42000
    }
}
if (con == 50)
{
    if (!instance_exists(blcon))
    {
        con = 51
        alarm[4] = 120
    }
}
if (con == 52)
{
    draw_f = 3
    con = 53
    alarm[4] = 180
    blk = 0
}
if (draw_u > 0)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_halign(fa_center)
    if (draw_u >= 1)
        draw_sprite_ext(spr_undertaletitle, 0, 0, -60, 2, 2, 0, c_white, 1)
    if (draw_u >= 2)
    {
        draw_set_color(c_red)
        scr_setfont(fnt_main)
        draw_text_transformed(320, 140, string_hash_to_newline(scr_gettext("hardmode_end_1")), 3, 3, 20)
    }
    if (draw_u >= 3)
    {
        draw_set_color(c_yellow)
        scr_setfont(fnt_main)
        draw_text_transformed(320, 230, string_hash_to_newline(scr_gettext("hardmode_end_2")), 1.5, 1.5, 0)
    }
    if (draw_u >= 4)
    {
        var yy = 270
        if (global.language == "ja")
            yy += 8
        draw_set_color(c_yellow)
        scr_setfont(fnt_main)
        draw_text_transformed(320, yy, string_hash_to_newline(scr_gettext("hardmode_end_3")), 1, 1, 0)
    }
    if (draw_u >= 5)
    {
        yy = 305
        if (global.language == "ja")
            yy += 8
        draw_set_color(c_yellow)
        scr_setfont(fnt_main)
        draw_text_transformed(320, yy, string_hash_to_newline(scr_gettext("hardmode_end_4")), 0.5, 0.5, 0)
    }
    draw_set_halign(fa_left)
}
if (draw_f == 1)
{
    draw_sprite_ext(spr_flowey_riseanim, floor(famt), fx, fy, 2, 2, 0, c_white, 1)
    famt += 0.5
    if (famt >= 8)
        draw_f = 2
}
if (draw_f == 2)
{
    draw_sprite_ext(spr_flowey_riseanim, 8, fx, fy, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_floweyface_l3, global.faceemotion, fx, fy, 2, 2, 0, c_white, 1)
}
if (draw_f == 3)
{
    draw_sprite_ext(spr_flowey_riseanim, floor(famt), fx, fy, 2, 2, 0, c_white, 1)
    famt -= 0.5
    if (famt <= 0)
        draw_f = 4
}
if (con == 54)
{
    draw_set_alpha(blk)
    blk += 0.01
    draw_set_color(c_black)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
}
