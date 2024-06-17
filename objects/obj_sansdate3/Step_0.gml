if (con == 20)
{
    con = 21
    global.facing = Direction.Left
    sans = scr_marker((obj_mainchara.x - 86), obj_mainchara.y, spr_sans_r)
    sans.depth = 800
    sans.image_speed = 0
    with (obj_mainchara)
    {
        view_xview_set(0, round(((x - (view_wview_get(0) / 2)) + 10)))
        view_yview_set(0, round(((y - (view_hview_get(0) / 2)) + 10)))
    }
    obj_mainchara.cutscene = true
    view_target_set(0, noone)
    idealx = view_xview_get(0)
    view_xview_set(0, (view_xview_get(0) - 40))
    if (global.interact == 0)
        global.interact = 1
    global.msc = 0
    global.facechoice = 3
    global.faceemotion = 0
    global.typer = 17
    caster_free(all)
    global.currentsong = caster_load("music/sansdate.ogg")
    con = 21
    alarm[4] = 30
}
if (con == 22)
{
    caster_loop(global.currentsong, 0.8, 1)
    con = 30
    global.msg[0] = scr_gettext("obj_sansdate3_116")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_sansdate3_124")
    global.msg[1] = scr_gettext("obj_sansdate3_125")
    global.msg[2] = scr_gettext("obj_sansdate3_126")
    global.msg[3] = scr_gettext("obj_sansdate3_127")
    global.msg[4] = scr_gettext("obj_sansdate3_128")
    global.msg[5] = scr_gettext("obj_sansdate3_129")
    global.msg[6] = scr_gettext("obj_sansdate3_130")
    global.msg[7] = scr_gettext("obj_sansdate3_131")
    global.msg[8] = scr_gettext("obj_sansdate3_132")
    instance_create(0, 0, obj_dialoguer)
    con = 31
}
if (con == 31 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 32
    alarm[4] = 80
}
if (con == 33 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_r
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_sansdate3_149")
    global.msg[1] = scr_gettext("obj_sansdate3_150")
    global.msg[2] = scr_gettext("obj_sansdate3_151")
    instance_create(0, 0, obj_dialoguer)
    con = 34
}
if (con == 34 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 34.5
    alarm[4] = 80
}
if (con == 35.5 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_r
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_sansdate3_168")
    global.msg[1] = scr_gettext("obj_sansdate3_169")
    global.msg[2] = scr_gettext("obj_sansdate3_170")
    global.msg[3] = scr_gettext("obj_sansdate3_171")
    global.msg[4] = scr_gettext("obj_sansdate3_172")
    global.msg[5] = scr_gettext("obj_sansdate3_173")
    global.msg[6] = scr_gettext("obj_sansdate3_174")
    global.msg[7] = scr_gettext("obj_sansdate3_175")
    global.msg[8] = scr_gettext("obj_sansdate3_176")
    global.msg[9] = scr_gettext("obj_sansdate3_177")
    global.msg[10] = scr_gettext("obj_sansdate3_178")
    global.msg[11] = scr_gettext("obj_sansdate3_179")
    global.msg[12] = scr_gettext("obj_sansdate3_180")
    global.msg[13] = scr_gettext("obj_sansdate3_181")
    global.msg[14] = scr_gettext("obj_sansdate3_182")
    global.msg[15] = scr_gettext("obj_sansdate3_183")
    global.msg[16] = scr_gettext("obj_sansdate3_184")
    global.msg[17] = scr_gettext("obj_sansdate3_185")
    global.msg[18] = scr_gettext("obj_sansdate3_186")
    global.msg[19] = scr_gettext("obj_sansdate3_187")
    global.msg[20] = scr_gettext("obj_sansdate3_188")
    global.msg[21] = scr_gettext("obj_sansdate3_189")
    global.msg[22] = scr_gettext("obj_sansdate3_190")
    global.msg[23] = scr_gettext("obj_sansdate3_191")
    global.msg[24] = scr_gettext("obj_sansdate3_192")
    global.msg[25] = scr_gettext("obj_sansdate3_193")
    global.msg[26] = scr_gettext("obj_sansdate3_194")
    global.msg[27] = scr_gettext("obj_sansdate3_195")
    global.msg[28] = scr_gettext("obj_sansdate3_196")
    global.msg[29] = scr_gettext("obj_sansdate3_197")
    global.msg[30] = scr_gettext("obj_sansdate3_198")
    global.msg[31] = scr_gettext("obj_sansdate3_199")
    global.msg[32] = scr_gettext("obj_sansdate3_200")
    global.msg[33] = scr_gettext("obj_sansdate3_201")
    global.msg[34] = scr_gettext("obj_sansdate3_202")
    instance_create(0, 0, obj_dialoguer)
    con = 36
}
if (con == 36 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 37
    alarm[4] = 80
}
if (con == 38 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_r
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_sansdate3_221")
    global.msg[1] = scr_gettext("obj_sansdate3_222")
    global.msg[2] = scr_gettext("obj_sansdate3_223")
    global.msg[3] = scr_gettext("obj_sansdate3_224")
    global.msg[4] = scr_gettext("obj_sansdate3_225")
    global.msg[5] = scr_gettext("obj_sansdate3_226")
    global.msg[6] = scr_gettext("obj_sansdate3_227")
    global.msg[7] = scr_gettext("obj_sansdate3_228")
    global.msg[8] = scr_gettext("obj_sansdate3_229")
    global.msg[9] = scr_gettext("obj_sansdate3_230")
    global.msg[10] = scr_gettext("obj_sansdate3_231")
    global.msg[11] = scr_gettext("obj_sansdate3_232")
    instance_create(0, 0, obj_dialoguer)
    con = 39
}
if (con == 39 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 40
    alarm[4] = 83
    vol = caster_get_volume(global.currentsong)
    vol2 = caster_get_volume(global.currentsong)
}
if (con == 40)
{
    if (vol > 0)
        vol -= 0.01
    caster_set_volume(global.currentsong, vol)
}
if (con == 41 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_r
    caster_pause(global.currentsong)
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_sansdate3_259")
    global.msg[1] = scr_gettext("obj_sansdate3_260")
    global.msg[2] = scr_gettext("obj_sansdate3_261")
    global.msg[3] = scr_gettext("obj_sansdate3_262")
    instance_create(0, 0, obj_dialoguer)
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 43
    alarm[4] = 60
}
if (con == 44 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 4
    global.typer = 21
    global.msg[0] = scr_gettext("obj_sansdate3_279")
    instance_create(0, 0, obj_dialoguer)
    con = 45
}
if (con == 45 && instance_exists(OBJ_WRITER) == false)
{
    caster_resume(global.currentsong)
    con = 46
    alarm[4] = 60
}
if (con == 46)
{
    if (vol < vol2)
        vol += 0.01
    caster_set_volume(global.currentsong, vol)
}
if (con == 47 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_r
    global.faceemotion = 1
    global.typer = 17
    global.msg[0] = scr_gettext("obj_sansdate3_304")
    global.msg[1] = scr_gettext("obj_sansdate3_305")
    global.msg[2] = scr_gettext("obj_sansdate3_306")
    global.msg[3] = scr_gettext("obj_sansdate3_307")
    global.msg[4] = scr_gettext("obj_sansdate3_308")
    global.msg[5] = scr_gettext("obj_sansdate3_309")
    global.msg[6] = scr_gettext("obj_sansdate3_310")
    ossafe_ini_open("undertale.ini")
    ddd = ini_read_real("General", "Gameover", 0)
    global.msg[7] = scr_gettext("obj_sansdate3_313")
    global.msg[8] = scr_gettext("obj_sansdate3_314")
    if (ddd > 0)
    {
        global.msg[7] = scr_gettext("obj_sansdate3_317")
        global.msg[8] = scr_gettext("obj_sansdate3_318")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 48
}
if (con == 48 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 49
    alarm[4] = 90
}
if (con == 50)
{
    sans.sprite_index = spr_sans_r
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_sansdate3_336")
    instance_create(0, 0, obj_dialoguer)
    con = 51
}
if (con == 51 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_u
    con = 51.1
    alarm[4] = 40
}
if (con == 51.1)
{
    sans.image_speed = 0.2
    sans.y -= 2
}
if (con == 52.1)
{
    sans.image_speed = 0
    sans.image_index = 0
    con = 51.2
    alarm[4] = 20
}
if (con == 52.2)
{
    sans.sprite_index = spr_sans_r
    con = 51.3
    alarm[4] = 20
}
if (con == 52.3)
{
    sans.sprite_index = spr_sans_d
    con = 52
    alarm[4] = 30
}
if (con == 53)
{
    global.faceemotion = 2
    global.msg[0] = scr_gettext("obj_sansdate3_380")
    global.msg[1] = scr_gettext("obj_sansdate3_381")
    global.msg[2] = scr_gettext("obj_sansdate3_382")
    instance_create(0, 0, obj_dialoguer)
    con = 54
}
if (con == 54 && instance_exists(OBJ_WRITER) == false)
{
    sans.sprite_index = spr_sans_l
    sans.image_speed = 0.2
    sans.hspeed = -3
    con = 55
    alarm[4] = 80
}
if (con == 56)
{
    con = 57
    alarm[4] = 40
}
if (con == 57)
    view_xview_set(0, (view_xview_get(0) + 1))
if (con == 58)
{
    view_xview_set(0, idealx)
    global.facing = Direction.Down
    view_target_set(0, obj_mainchara)
    obj_mainchara.cutscene = false
    global.interact = 0
    con = 59
    FL_SansDated2 = SansDated2.DateFinished
    instance_destroy()
}
