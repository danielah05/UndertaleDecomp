if (skiptext == 1)
    scr_textskip()
if (con == 1)
{
    global.faceemotion = 4
    global.border = 4
    SCR_BORDERSETUP()
    fallendown = caster_load("music/fallendown2.ogg")
    tor = instance_create(640, 96, obj_torielbody)
    tor.hspeed = -10
    con = 2
}
if (con == 2)
{
    if (tor.x <= 256)
    {
        caster_loop(fallendown, 1, 1)
        tor.hspeed = 0
        tor.x = 248
        con = 3
        alarm[4] = 15
    }
}
if (con == 4)
{
    global.msc = 0
    global.typer = 8
    global.faceemotion = 4
    global.msg[0] = scr_gettext("obj_friendscene_182")
    global.msg[1] = scr_gettext("obj_friendscene_183")
    global.msg[2] = scr_gettext("obj_friendscene_184")
    global.msg[3] = scr_gettext("obj_friendscene_185")
    global.msg[4] = scr_gettext("obj_friendscene_186")
    global.msg[5] = scr_gettext("obj_friendscene_187")
    global.msg[6] = scr_gettext("obj_friendscene_188")
    global.msg[7] = scr_gettext("obj_friendscene_189")
    global.msg[8] = scr_gettext("obj_friendscene_190")
    global.msg[9] = scr_gettext("obj_friendscene_191")
    global.msg[10] = scr_gettext("obj_friendscene_192")
    global.msg[11] = scr_gettext("obj_friendscene_193")
    global.msg[12] = scr_gettext("obj_friendscene_194")
    global.msg[13] = scr_gettext("obj_friendscene_195")
    global.msg[14] = scr_gettext("obj_friendscene_196")
    global.msg[15] = scr_gettext("obj_friendscene_197")
    scr_blcon_ofs((tor.x + 135), (tor.y - 30), 0, 6, 0)
    con = 5
}
if (con == 5 && instance_exists(obj_blconwideslave) == false)
{
    con = 6
    asg = instance_create(-340, 60, obj_sadgore)
    asg.hspeed = 8
    tor.hspeed = 8
}
if (con == 6)
{
    if (asg.x > -130)
    {
        asg.hspeed = 0
        tor.hspeed = 0
        con = 7
        alarm[4] = 10
    }
}
if (con == 8)
{
    global.faceemotion = 1
    global.typer = 63
    global.msg[0] = scr_gettext("obj_friendscene_226")
    scr_blcon_x((asg.x + 300), asg.y)
    obj_blconwideslave.sprite_index = spr_blconsm
    con = 9
}
if (con == 9 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_236")
    global.msg[1] = scr_gettext("obj_friendscene_237")
    global.msg[2] = scr_gettext("obj_friendscene_238")
    global.msg[3] = scr_gettext("obj_friendscene_239")
    global.msg[4] = scr_gettext("obj_friendscene_240")
    global.msg[5] = scr_gettext("obj_friendscene_241")
    global.msg[6] = scr_gettext("obj_friendscene_242")
    scr_blcon_x((tor.x - 239), (tor.y - 40))
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 0)
        asg.face = 2
    if (OBJ_WRITER.stringno == 1)
        asg.face = 3
    if (OBJ_WRITER.stringno == 5)
        asg.face = 4
}
if (con == 10 && instance_exists(obj_blconwideslave) == false)
{
    asg.face = 5
    con = 11
    alarm[4] = 60
    alarm[4] = 1
}
if (con == 12)
{
    asg.face = 5
    global.typer = 63
    global.msg[0] = scr_gettext("obj_friendscene_271")
    global.msg[1] = scr_gettext("obj_friendscene_272")
    global.msg[2] = scr_gettext("obj_friendscene_273")
    global.msg[3] = scr_gettext("obj_friendscene_274")
    global.msg[4] = scr_gettext("obj_friendscene_275")
    scr_blcon_ofs((asg.x + 300), asg.y, 0, 6, 0)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 4)
        asg.face = 6
}
if (con == 13 && instance_exists(obj_blconwideslave) == false)
{
    asg.face = 6
    con = 14
    alarm[4] = 60
    alarm[4] = 1
}
if (con == 15)
{
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_301")
    global.msg[1] = scr_gettext("obj_friendscene_302")
    scr_blcon_x((tor.x - 110), (tor.y - 40))
    obj_blconwideslave.sprite_index = spr_blconsm2
    con = 16
}
if (con == 16 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 0)
        global.faceemotion = 10
    if (OBJ_WRITER.stringno == 1)
    {
        global.faceemotion = 11
        asg.face = 7
    }
}
if (con == 16 && instance_exists(obj_blconwideslave) == false)
{
    con = 16.1
    alarm[4] = 10
}
if (con == 17.1)
{
    global.faceemotion = 3
    und = instance_create(700, 340, obj_undyne_endingbody)
    und.hspeed = -12
    con = 18
}
if (con == 18)
{
    with (obj_btparent)
    {
        depth = 300
        image_alpha -= 0.08
    }
    with (obj_mercybutton_shatter)
    {
        depth = 300
        image_alpha -= 0.08
    }
    if (und.x <= 510)
    {
        und.x = 500
        und.hspeed = 0
        con = 19
        alarm[4] = 8
    }
}
if (con == 20)
{
    global.msc = 0
    global.typer = 81
    global.msg[0] = scr_gettext("obj_friendscene_353")
    global.msg[1] = scr_gettext("obj_friendscene_354")
    global.msg[2] = scr_gettext("obj_friendscene_355")
    global.msg[3] = scr_gettext("obj_friendscene_356")
    global.msg[4] = scr_gettext("obj_friendscene_357")
    scr_blcon_x((und.x - 260), und.y)
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 21
}
if (con == 21 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 2)
        global.faceemotion = 9
    if (OBJ_WRITER.stringno == 3)
        und.face = 17
}
if (con == 21 && instance_exists(obj_blconwideslave) == false)
{
    con = 22
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_376")
    global.msg[1] = scr_gettext("obj_friendscene_377")
    global.msg[2] = scr_gettext("obj_friendscene_378")
    scr_blcon_x((tor.x - 110), (tor.y - 40))
    obj_blconwideslave.sprite_index = spr_blconsm2
}
if (con == 22 && instance_exists(obj_blconwideslave) == false)
{
    con = 23
    global.typer = 81
    und.face = 10
    global.msg[0] = scr_gettext("obj_friendscene_388")
    global.msg[1] = scr_gettext("obj_friendscene_389")
    scr_blcon_x((und.x - 130), und.y)
    obj_blconwideslave.sprite_index = spr_blconsm2
}
if (con == 23 && instance_exists(obj_blconwideslave) == false)
{
    und.face = 10
    global.faceemotion = 0
    if (und.x > 170)
        und.x -= 15
    else
        und.x = 160
    if (und.y > 78)
        und.y -= 13
    else
        und.y = 68
    if (und.x == 160 && und.y == 68)
        con = 25
}
if (con == 25)
{
    und.face = 16
    global.typer = 81
    global.msg[0] = scr_gettext("obj_friendscene_413")
    global.msg[1] = scr_gettext("obj_friendscene_414")
    scr_blcon_x((und.x + 80), (und.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm
    con = 26
}
if (con == 26 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
    {
        und.face = 4
        asg.face = 8
    }
}
if (con == 26 && instance_exists(obj_blconwideslave) == false)
{
    global.faceemotion = 9
    con = 27
    al = instance_create(660, 348, obj_alphys_friendscene)
    al.hspeed = -12
    con = 28
}
if (con == 28)
{
    if (al.x <= 470)
    {
        al.hspeed = 0
        al.x = 460
        con = 29
        alarm[4] = 10
    }
}
if (con == 30)
{
    und.face = 18
    global.typer = 74
    global.msg[0] = scr_gettext("obj_friendscene_450")
    global.msg[1] = scr_gettext("obj_friendscene_451")
    global.msg[2] = scr_gettext("obj_friendscene_452")
    global.msg[3] = scr_gettext("obj_friendscene_453")
    scr_blcon_x((al.x - 120), al.y)
    blcon.sprite_index = spr_blconsm2
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 31
}
if (con == 31 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 2)
        al.face = 4
    if (OBJ_WRITER.stringno == 3)
        al.face = 16
}
if (con == 31 && instance_exists(obj_blconwideslave) == false)
{
    con = 32
    alarm[4] = 10
}
if (con == 33)
{
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_477")
    global.msg[1] = scr_gettext("obj_friendscene_478")
    scr_blcon_x((tor.x - 110), (tor.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm2
    con = 34
}
if (con == 34 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 74
    global.msg[0] = scr_gettext("obj_friendscene_487")
    global.msg[1] = scr_gettext("obj_friendscene_488")
    global.msg[2] = scr_gettext("obj_friendscene_489")
    scr_blcon_x((al.x - 120), al.y)
    obj_blconwideslave.sprite_index = spr_blconsm2
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 35
}
if (con == 35 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        al.face = 17
    if (OBJ_WRITER.stringno == 2)
        al.face = 4
}
if (con == 35 && instance_exists(obj_blconwideslave) == false)
{
    al.face = 18
    global.faceemotion = 0
    if (al.x > 230)
        al.x -= 10
    else
        al.x = 220
    if (al.y > 114)
        al.y -= 12
    else
        al.y = 104
    if (al.x == 220 && al.y == 104)
    {
        al.face = 18
        con = 36
    }
}
if (con == 36)
{
    global.faceemotion = 9
    pap = instance_create(660, 300, obj_papyrus_friendscene)
    pap.hspeed = -16
    con = 37
}
if (con == 37)
{
    if (pap.x <= 478)
    {
        pap.hspeed = 0
        pap.x = 468
        con = 38
        alarm[4] = 10
    }
}
if (con == 39 && instance_exists(obj_blconwideslave) == false)
{
    global.msc = 0
    global.typer = 22
    global.msg[0] = scr_gettext("obj_friendscene_546")
    global.msg[1] = scr_gettext("obj_friendscene_547")
    global.msg[2] = scr_gettext("obj_friendscene_548")
    global.msg[3] = scr_gettext("obj_friendscene_549")
    scr_blcon_x((pap.x - 260), pap.y)
    writer.writingx -= 10
    writer.writingxend -= 10
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 40
}
if (con == 40 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        pap.face = 1
    if (OBJ_WRITER.stringno == 3)
        pap.face = 0
}
if (con == 40 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 2
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_572")
    scr_blcon_x((tor.x - 110), (tor.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm2
    con = 41
}
if (con == 41 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 2
    global.typer = 22
    global.msg[0] = scr_gettext("obj_friendscene_582")
    global.msg[1] = scr_gettext("obj_friendscene_583")
    global.msg[2] = scr_gettext("obj_friendscene_584")
    global.msg[3] = scr_gettext("obj_friendscene_585")
    scr_blcon_x((pap.x - 260), pap.y)
    writer.writingx -= 10
    writer.writingxend -= 10
    obj_blconwideslave.depth = -1000
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    OBJ_WRITER.depth = -2000
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        pap.face = 7
    if (OBJ_WRITER.stringno == 2)
        pap.face = 5
    if (OBJ_WRITER.stringno == 3)
        pap.face = 6
}
if (con == 42 && instance_exists(obj_blconwideslave) == false)
{
    global.faceemotion = 0
    sans = instance_create(-108, 408, obj_sans_friendscene)
    sans.hspeed = 5
    con = 43
}
if (con == 43)
{
    if (sans.x >= 16)
    {
        sans.x = 20
        sans.hspeed = 0
        con = 44
        alarm[4] = 10
    }
}
if (con == 45)
{
    pap.face = 7
    global.faceemotion = 3
    global.typer = 80
    global.msg[0] = scr_gettext("obj_friendscene_631")
    scr_blcon_x((sans.x + 108), (sans.y - 50))
    writer.writingx -= 3
    obj_blconwideslave.sprite_index = spr_blconsm
    con = 46
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
}
if (con == 46 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 2
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_644")
    scr_blcon_x((tor.x - 110), (tor.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm2
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 47
}
if (con == 47 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 7
    global.faceemotion = 6
    if (pap.x < 560)
        pap.x += 3
    if (tor.x > 365)
        tor.x -= 10
    else
        tor.x = 360
    if (tor.y < 360)
        tor.y += 12
    else
        tor.y = 352
    if (tor.x == 360 && tor.y == 352)
        con = 48
}
if (con == 48 && instance_exists(obj_blconwideslave) == false)
{
    und.face = 13
    asg.face = 9
    al.face = 3
    sans.face = 7
    global.typer = 8
    global.faceemotion = 6
    global.msg[0] = scr_gettext("obj_friendscene_678")
    global.msg[1] = scr_gettext("obj_friendscene_679")
    scr_blcon_x((tor.x - 110), (tor.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm2
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 49
}
if (con == 49 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 80
    sans.face = 8
    global.msg[0] = scr_gettext("obj_friendscene_691")
    scr_blcon_x(120, 360)
    if (global.language == "ja")
    {
        obj_blconwideslave.sprite_index = spr_blconsm
        writer.writingx -= 3
    }
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 50
}
if (con == 50 && instance_exists(obj_blconwideslave) == false)
{
    asg.face = 10
    al.face = 4
    und.face = 19
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_705")
    global.msg[1] = scr_gettext("obj_friendscene_706")
    scr_blcon_x((tor.x - 110), (tor.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm2
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 51
}
if (con == 51 && instance_exists(obj_blconwideslave) == false)
{
    global.msg[0] = scr_gettext("obj_friendscene_717")
    global.msg[1] = scr_gettext("obj_friendscene_718")
    sans.face = 9
    global.typer = 80
    scr_blcon_x(120, 360)
    writer.writingx -= 3
    obj_blconwideslave.sprite_index = spr_blconsm
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 52
}
if (con == 52 && instance_exists(obj_blconwideslave) == false)
{
    sans.face = 7
    global.typer = 8
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_friendscene_733")
    scr_blcon_x((tor.x - 110), (tor.y - 30))
    obj_blconwideslave.sprite_index = spr_blconsm2
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 53
}
if (con == 53 && instance_exists(obj_blconwideslave) == false)
{
    global.faceemotion = 14
    if (pap.x > 500)
        pap.x -= 5
    if (tor.x > 128)
        tor.x -= 20
    else
        tor.x = 108
    if (tor.x == 108)
        con = 54
}
if (con == 54)
{
    pap.face = 0
    global.msg[0] = scr_gettext("obj_friendscene_760")
    global.msg[1] = scr_gettext("obj_friendscene_761")
    global.msg[2] = scr_gettext("obj_friendscene_762")
    global.typer = 8
    scr_blcon_ofs((tor.x + 135), (tor.y - 30), 0, 6, 0)
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 55
}
if (con == 55 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        pap.face = 3
}
if (con == 55 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 22
    pap.face = 3
    global.msg[0] = scr_gettext("obj_friendscene_779")
    global.msg[1] = scr_gettext("obj_friendscene_780")
    global.msg[2] = scr_gettext("obj_friendscene_781")
    scr_blcon_x((pap.x - 240), pap.y)
    writer.writingx -= 10
    writer.writingxend -= 10
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 56
}
if (con == 56 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 8
    pap.face = 0
    global.msg[0] = scr_gettext("obj_friendscene_795")
    global.msg[1] = scr_gettext("obj_friendscene_796")
    scr_blcon_ofs((tor.x + 135), (tor.y - 30), 0, 6, 0)
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 57
}
if (con == 57 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 7
    global.typer = 22
    global.msg[0] = scr_gettext("obj_friendscene_808")
    scr_blcon_x((pap.x - 240), pap.y)
    writer.writingx -= 10
    writer.writingxend -= 10
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 58
}
if (con == 58 && instance_exists(obj_blconwideslave) == false)
{
    global.msg[0] = scr_gettext("obj_friendscene_819")
    global.msg[1] = scr_gettext("obj_friendscene_820")
    global.typer = 8
    scr_blcon_ofs((tor.x + 135), (tor.y - 30), 0, 6, 0)
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 59
}
if (con == 59 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        pap.face = 8
}
if (con == 59 && instance_exists(OBJ_WRITER) == false)
{
    con = 60
    alarm[4] = 1
    sans.face = 8
    global.faceemotion = 12
}
if (con == 61 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 4
    global.typer = 22
    global.msg[0] = scr_gettext("obj_friendscene_846")
    global.msg[1] = scr_gettext("obj_friendscene_847")
    scr_blcon_x((pap.x - 240), pap.y)
    writer.writingx -= 10
    writer.writingxend -= 10
    obj_blconwideslave.sprite_index = spr_blconwdshrt_l
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 62
}
if (con == 62 && instance_exists(obj_blconwideslave) == false)
{
    al.face = 18
    und.face = 4
    asg.face = 7
    global.typer = 81
    global.msg[0] = scr_gettext("obj_friendscene_863")
    global.msg[1] = scr_gettext("obj_friendscene_864")
    scr_blcon_ofs((und.x + 85), (und.y - 50), 0, 6, 0)
    con = 63
}
if (con == 63 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        und.face = 11
}
if (con == 63 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 74
    und.face = 18
    al.face = 9
    asg.face = 8
    global.msg[0] = scr_gettext("obj_friendscene_880")
    global.msg[1] = scr_gettext("obj_friendscene_881")
    global.msg[2] = scr_gettext("obj_friendscene_882")
    global.msg[3] = scr_gettext("obj_friendscene_883")
    global.msg[4] = scr_gettext("obj_friendscene_884")
    global.msg[5] = scr_gettext("obj_friendscene_885")
    global.msg[6] = scr_gettext("obj_friendscene_886")
    scr_blcon_ofs((al.x + 145), al.y, 0, 6, 0)
    con = 64
}
if (con == 64 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        al.face = 10
    if (OBJ_WRITER.stringno == 4)
        und.face = 12
    if (OBJ_WRITER.stringno == 5)
    {
        al.face = 15
        und.face = 13
    }
    if (OBJ_WRITER.stringno == 6)
    {
        al.face = 18
        und.face = 11
    }
}
if (con == 64 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 81
    und.face = 18
    global.msg[0] = scr_gettext("obj_friendscene_910")
    global.msg[1] = scr_gettext("obj_friendscene_911")
    scr_blcon_x((und.x + 85), (und.y - 50))
    obj_blconwideslave.sprite_index = spr_blconsm
    con = 65
}
if (con == 65 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        und.face = 11
}
if (con == 65 && instance_exists(obj_blconwideslave) == false)
{
    leg = 1
    leg_r = 0
    legx = (room_width + 200)
    al.face = 15
    und.face = 13
    pap.face = 2
    global.faceemotion = 4
    asg.face = 9
    con = 66
    alarm[4] = 15
}
if (con == 67)
{
    global.typer = 51
    global.msg[0] = scr_gettext("obj_friendscene_945")
    global.msg[1] = scr_gettext("obj_friendscene_946")
    global.msg[2] = scr_gettext("obj_friendscene_947")
    scr_blcon_x((room_width - 255), 20)
    blcon.sprite_index = spr_blconwdshrt_l
    con = 68
}
if (con == 68 && instance_exists(obj_blconwideslave) == false)
{
    leg = 2
    global.faceemotion = 13
    pap.face = 7
    global.typer = 81
    und.face = 6
    global.msg[0] = scr_gettext("obj_friendscene_962")
    global.msg[1] = scr_gettext("obj_friendscene_963")
    global.msg[2] = scr_gettext("obj_friendscene_964")
    global.msg[3] = scr_gettext("obj_friendscene_965")
    global.msg[4] = scr_gettext("obj_friendscene_966")
    scr_blcon_ofs((und.x + 85), (und.y - 50), 0, 6, 0)
    con = 69
}
if (con == 69 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        und.face = 10
    if (OBJ_WRITER.stringno == 2)
        und.face = 18
    if (OBJ_WRITER.stringno == 4)
        und.face = 3
}
if (con == 69 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 74
    al.face = 4
    global.msg[0] = scr_gettext("obj_friendscene_982")
    global.msg[1] = scr_gettext("obj_friendscene_983")
    global.msg[2] = scr_gettext("obj_friendscene_984")
    global.msg[3] = scr_gettext("obj_friendscene_985")
    scr_blcon_x((al.x + 145), al.y)
    obj_blconwideslave.sprite_index = spr_blconsm
    con = 70
}
if (con == 70 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 2)
    {
        al.face = 3
        und.face = 13
    }
    if (OBJ_WRITER.stringno == 3)
        al.face = 11
}
if (con == 70 && instance_exists(obj_blconwideslave) == false)
{
    al.face = 18
    und.face = 19
    global.typer = 81
    global.msg[0] = scr_gettext("obj_friendscene_1003")
    global.msg[1] = scr_gettext("obj_friendscene_1004")
    global.msg[2] = scr_gettext("obj_friendscene_1005")
    scr_blcon_ofs((und.x + 85), (und.y - 50), 0, 6, 0)
    con = 71
}
if (con == 71 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        und.face = 17
    if (OBJ_WRITER.stringno == 2)
        und.face = 14
}
if (con == 71 && instance_exists(obj_blconwideslave) == false)
{
    con = 72
    alarm[4] = 90
    und.smooch = 1
    al.smooch = 1
}
if (con == 73)
{
    und.smooch = 2
    al.smooch = 2
    global.faceemotion = 3
    asg.face = 9
    al.x += 21
    tor.x += 12
    if (tor.x > 212)
        tor.x = 218
    tor.y -= 26
    if (tor.y < 108)
        tor.y = 96
    if (tor.x == 218 && tor.y == 96)
        con = 74
}
if (con == 74)
{
    global.typer = 8
    global.msg[0] = scr_gettext("obj_friendscene_1047")
    global.msg[1] = scr_gettext("obj_friendscene_1048")
    scr_blcon_x((tor.x + 125), (tor.y - 80))
    obj_blconwideslave.sprite_index = spr_blconsm
    con = 75
}
if (con == 75 && instance_exists(obj_blconwideslave) == false)
{
    und.smooch = 0
    und.s_i = 0
    al.smooch = 0
    con = 76
    global.typer = 74
    al.face = 18
    und.face = 14
    global.faceemotion = 6
    global.msg[0] = scr_gettext("obj_friendscene_1066")
    scr_blcon_x((al.x - 40), (tor.y - 90))
    obj_blconwideslave.sprite_index = spr_blconabove
}
if (con == 76 && instance_exists(obj_blconwideslave) == false)
{
    sans.face = 0
    pap.face = 0
    asg.face = 0
    al.face = 0
    und.face = 0
    sidecon = 1
    global.typer = 8
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_friendscene_1082")
    global.msg[1] = scr_gettext("obj_friendscene_1083")
    global.msg[2] = scr_gettext("obj_friendscene_1084")
    global.msg[3] = scr_gettext("obj_friendscene_1085")
    global.msg[4] = scr_gettext("obj_friendscene_1086")
    scr_blcon_x((tor.x - 35), (tor.y + 170))
    obj_blconwideslave.sprite_index = spr_blconbelow
    obj_blconwideslave.depth = -1000
    OBJ_WRITER.depth = -2000
    con = 77
}
if (con == 77 && instance_exists(obj_blconwideslave) == false && sidecon == 2)
{
    con = 78
    alarm[4] = 40
}
if (con == 79)
{
    global.typer = 74
    global.faceemotion = 0
    skiptext = 0
    al.face = 15
    global.msg[0] = scr_gettext("obj_friendscene_1108")
    global.msg[1] = scr_gettext("obj_friendscene_1109")
    global.msg[2] = scr_gettext("obj_friendscene_1110")
    global.msg[3] = scr_gettext("obj_friendscene_1111")
    global.msg[4] = scr_gettext("obj_friendscene_1112")
    scr_blcon_x((al.x - 80), (tor.y - 90))
    obj_blconwideslave.sprite_index = spr_blconabove
    con = 80
}
if (con == 80 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 7
    global.typer = 22
    global.msg[0] = scr_gettext("obj_friendscene_1122")
    scr_blcon_x((pap.x - 100), 8)
    writer.writingx -= 10
    writer.writingxend -= 128
    obj_blconwideslave.sprite_index = spr_blconsm2
    con = 81
}
if (con == 81 && instance_exists(obj_blconwideslave) == false)
{
    pap.face = 0
    global.typer = 83
    global.msg[0] = scr_gettext("obj_friendscene_1132")
    caster_free(fallendown)
    scr_blcon_x((pap.x - 100), 8)
    writer.writingx -= 2
    writer.writingxend -= 125
    obj_blconwideslave.sprite_index = spr_blconsm2
    con = 82
}
if (con == 82 && instance_exists(obj_blconwideslave) == false)
{
    al.face = 9
    global.typer = 82
    global.msg[0] = scr_gettext("obj_friendscene_1146")
    global.faceemotion = 1
    scr_blcon_x((al.x - 80), (tor.y - 90))
    obj_blconwideslave.sprite_index = spr_blconabove
    con = 83
}
if (con == 83 && instance_exists(obj_blconwideslave) == false)
{
    con = 84
    alarm[4] = 50
}
if (con == 85)
{
    i = 0
    snd_play(snd_laz)
    gigavine[i] = instance_create(-100, 160, obj_friendscene_gigavine)
    con = 86
    alarm[4] = 75
}
if (con == 87)
{
    global.border = 4
    SCR_BORDERSETUP()
    gowhite = 1
    con = 88
    snd_play(snd_break2)
    alarm[4] = 80
}
if (con == 89)
{
    global.faceemotion = 0
    flowey = instance_create(276, 296, obj_flowey_friendscene)
    con = 90
    alarm[4] = 60
}
if (con == 91)
{
    skiptext = 1
    caster_loop(fmusic, 0.8, 0.9)
    global.typer = 6
    global.msg[0] = scr_gettext("obj_friendscene_1194")
    global.msg[1] = scr_gettext("obj_friendscene_1195")
    global.msg[2] = scr_gettext("obj_friendscene_1196")
    global.msg[3] = scr_gettext("obj_friendscene_1197")
    global.msg[4] = scr_gettext("obj_friendscene_1198")
    global.msg[5] = scr_gettext("obj_friendscene_1199")
    global.msg[6] = scr_gettext("obj_friendscene_1200")
    global.msg[7] = scr_gettext("obj_friendscene_1201")
    global.msg[8] = scr_gettext("obj_friendscene_1202")
    global.msg[9] = scr_gettext("obj_friendscene_1203")
    global.msg[10] = scr_gettext("obj_friendscene_1204")
    global.msg[11] = scr_gettext("obj_friendscene_1205")
    global.msg[12] = scr_gettext("obj_friendscene_1206")
    global.msg[13] = scr_gettext("obj_friendscene_1207")
    global.msg[14] = scr_gettext("obj_friendscene_1208")
    global.msg[15] = scr_gettext("obj_friendscene_1209")
    global.msg[16] = scr_gettext("obj_friendscene_1210")
    global.msg[17] = scr_gettext("obj_friendscene_1211")
    global.msg[18] = scr_gettext("obj_friendscene_1212")
    global.msg[19] = scr_gettext("obj_friendscene_1213")
    global.msg[20] = scr_gettext("obj_friendscene_1214")
    global.msg[21] = scr_gettext("obj_friendscene_1215")
    global.msg[22] = scr_gettext("obj_friendscene_1216")
    global.msg[23] = scr_gettext("obj_friendscene_1217")
    global.msg[24] = scr_gettext("obj_friendscene_1218")
    global.msg[25] = scr_gettext("obj_friendscene_1219")
    global.msg[26] = scr_gettext("obj_friendscene_1220")
    global.msg[27] = scr_gettext("obj_friendscene_1221")
    global.msg[28] = scr_gettext("obj_friendscene_1222")
    global.msg[29] = scr_gettext("obj_friendscene_1223")
    global.msg[30] = scr_gettext("obj_friendscene_1224")
    global.msg[31] = scr_gettext("obj_friendscene_1225")
    global.msg[32] = scr_gettext("obj_friendscene_1226")
    global.msg[33] = scr_gettext("obj_friendscene_1227")
    global.msg[34] = scr_gettext("obj_friendscene_1228")
    scr_blcon_ofs((flowey.x + 105), (flowey.y - 20), 0, 6, 0)
    con = 92
}
if (con == 92 && instance_exists(obj_blconwideslave) == false)
{
    flowey.con = 6
    alarm[4] = 60
    con = 93
}
if (con == 94)
{
    caster_free(all)
    snd_play(snd_impact)
    border_d = 1
    tx = 320
    ty = 300
    con = 94.1
    alarm[4] = 40
}
if (con == 95.1)
{
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    con = 95
    alarm[4] = 60
}
if (con == 96)
{
    global.faceemotion = 0
    global.typer = 7
    global.msg[0] = scr_gettext("obj_friendscene_1266")
    scr_blcon_x((flowey.x - 65), (flowey.y - 110))
    obj_blconwideslave.sprite_index = spr_blconabove
    con = 97
}
if (con == 97 && instance_exists(obj_blconwideslave) == false)
{
    snd_play(snd_floweylaugh)
    with (gen)
        event_user(0)
    con = 98
    alarm[4] = 35
    done = 0
    flowey.laugh = 1
}
if (con == 99)
{
    snd_stop(snd_floweylaugh)
    snd_play(snd_floweylaugh)
    done += 1
    with (gen)
        event_user(0)
    with (gen)
        instance_destroy()
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    if (done == 1)
    {
        con = 98
        alarm[4] = 35
    }
    else
    {
        con = 100
        alarm[4] = 35
    }
}
if (con == 101)
{
    snd_stop(snd_floweylaugh)
    snd_play(snd_floweylaugh)
    with (gen)
        event_user(0)
    with (gen)
        instance_destroy()
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    gen.spec = 2
    gen.radius = 130
    con = 102
    alarm[4] = 100
}
if (con == 103)
{
    with (gen)
        event_user(0)
    con = 104
    alarm[4] = 105
}
if (con == 105)
{
    flowey.laugh = 2
    con = 106
    alarm[4] = 60
}
if (con == 106)
{
    with (obj_wrapshock)
    {
        if (mf >= 0)
            mf -= 0.015
    }
}
if (con == 107)
{
    flowey.laugh = 0
    global.faceemotion = 4
    global.typer = 6
    global.msg[0] = scr_gettext("obj_friendscene_1357")
    scr_blcon_x((flowey.x - 65), (flowey.y - 110))
    obj_blconwideslave.sprite_index = spr_blconabove
    con = 108
}
if (con == 108 && instance_exists(obj_blconwideslave) == false)
{
    con = 109
    alarm[4] = 40
}
if (con == 110)
{
    dontgiveup = caster_load("music/dontgiveup.ogg")
    caster_loop(dontgiveup, 0.9, 1)
    tor2.face = 1
    global.typer = 84
    global.msg[0] = scr_gettext("obj_friendscene_1375")
    global.msg[1] = scr_gettext("obj_friendscene_1376")
    global.msg[2] = scr_gettext("obj_friendscene_1377")
    scr_blcon_x((tor2.x - 5), (tor2.y + 170))
    obj_blconwideslave.sprite_index = spr_blconbelow
    blcon.depth = -2000
    OBJ_WRITER.depth = -3000
    con = 111
}
if (con == 111 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        tor2.face = 2
}
if (con == 111 && instance_exists(obj_blconwideslave) == false)
{
    snd_play(snd_heal_c)
    global.hp += 1
    con = 112
    alarm[4] = 45
}
if (con == 113)
{
    global.faceemotion = 12
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    with (gen)
    {
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = 1
        spec = 3
    }
    con = 114
    alarm[4] = 20
}
if (con == 115)
{
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    with (gen)
    {
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = 1
        spec = 4
    }
    con = 116
    alarm[4] = 60
}
if (con == 117)
{
    global.faceemotion = 4
    pap2.face = 1
    global.typer = 22
    global.msg[0] = scr_gettext("obj_friendscene_1434")
    global.msg[1] = scr_gettext("obj_friendscene_1435")
    global.msg[2] = scr_gettext("obj_friendscene_1436")
    scr_blcon_x((pap2.x - 45), (pap2.y + 270))
	if (global.language == "ja")
        writer.writingy -= 5
    writer.writingx -= 10
    writer.writingxend -= 60
    obj_blconwideslave.sprite_index = spr_blconbelow
    con = 118
}
if (con == 118 && instance_exists(obj_blconwideslave) == false)
{
    snd_play(snd_heal_c)
    global.hp += 1
    und2.face = 1
    global.typer = 81
    global.msg[0] = scr_gettext("obj_friendscene_1449")
    global.msg[1] = scr_gettext("obj_friendscene_1450")
    scr_blcon_x((und2.x - 45), (und2.y + 200))
    obj_blconwideslave.sprite_index = spr_blconbelow
    con = 119
}
if (con == 119 && instance_exists(obj_blconwideslave) == false)
{
    snd_play(snd_heal_c)
    global.hp += 1
    sans2.face = 1
    global.typer = 80
    global.msg[0] = scr_gettext("obj_friendscene_1463")
    global.msg[1] = scr_gettext("obj_friendscene_1464")
    scr_blcon_x((sans2.x - 25), (sans2.y + 130))
    obj_blconwideslave.sprite_index = spr_blconbelow
    blcon.depth = -10
    con = 120
}
if (con == 120 && instance_exists(obj_blconwideslave) == false)
{
    snd_play(snd_heal_c)
    global.hp += 1
    con = 121
    alarm[4] = 40
}
if (con == 122)
{
    global.faceemotion = 12
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    with (gen)
    {
        alarm[0] = -1
        alarm[1] = -1
        alarm[2] = 1
        spec = 5
    }
    con = 123
    alarm[4] = 20
}
if (con == 124)
{
    gen = instance_create(tx, ty, obj_spinbulletgen_friendscene)
    with (gen)
    {
        alarm[0] = -1
        alarm[1] = -1
        alarm[3] = 1
        spec = 6
    }
    con = 125
    alarm[4] = 60
}
if (con == 126 && instance_exists(obj_blconwideslave) == false)
{
    global.faceemotion = 14
    al2.face = 1
    global.typer = 74
    global.msg[0] = scr_gettext("obj_friendscene_1514")
    global.msg[1] = scr_gettext("obj_friendscene_1515")
    scr_blcon_x((al2.x - 75), (al2.y + 190))
    obj_blconwideslave.sprite_index = spr_blconbelow
    obj_blconwideslave.depth = -10
    con = 127
}
if (con == 127 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        al2.face = 2
}
if (con == 127 && instance_exists(obj_blconwideslave) == false)
{
    snd_play(snd_heal_c)
    global.hp += 1
    global.typer = 63
    asg2.face = 2
    global.msg[0] = scr_gettext("obj_friendscene_1532")
    global.msg[1] = scr_gettext("obj_friendscene_1533")
    scr_blcon_x(-10, (asg2.y + 250))
    obj_blconwideslave.sprite_index = spr_blconbelow
    con = 128
}
if (con == 128 && instance_exists(obj_blconwideslave) == false)
{
    global.faceemotion = 16
    snd_play(snd_heal_c)
    global.hp += 1
    con = 129
    alarm[4] = 30
}
if (con == 130)
{
    with (flowey)
    {
        neut = 1
        spec = 1
        con = 6
    }
    biig = instance_create(0, 0, obj_bringitinguys)
    con = 131
    alarm[4] = 60
}
if (con == 132)
{
    global.faceemotion = 17
    con = 133
    alarm[4] = 30
}
if (con == 134)
{
    with (flowey)
    {
        spec = 2
        con = 6
    }
    con = 135
    alarm[4] = 110
}
if (con == 136 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 78
    skiptext = 0
    global.faceemotion = 18
    global.msg[0] = scr_gettext("obj_friendscene_1589")
    global.msg[1] = scr_gettext("obj_friendscene_1590")
    global.msg[2] = scr_gettext("obj_friendscene_1591")
    global.msg[3] = scr_gettext("obj_friendscene_1592")
    scr_blcon_x((flowey.x - 65), (flowey.y - 110))
    obj_blconwideslave.sprite_index = spr_blconabove
    blcon.depth = -2000
    OBJ_WRITER.depth = -3000
    con = 137
}
if (con == 127 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 2)
        global.faceemotion = 19
    if (OBJ_WRITER.stringno == 3)
        global.faceemotion = 20
}
if (con == 137 && instance_exists(obj_blconwideslave) == false)
{
    caster_free(dontgiveup)
    snd_play(snd_noise)
    flowey.laugh = 2
    con = 138
    alarm[4] = 70
    with (obj_wrapshock)
    {
        mf = 0
        freeze = true
    }
    with (obj_friendscene_gigavine)
        shimmy = 0
    with (biig)
        event_user(0)
    trickblack = 1
}
if (con == 139 && instance_exists(obj_blconwideslave) == false)
{
    global.typer = 77
    hellsfx = caster_load("music/f_destroyed3.ogg")
    global.msg[0] = scr_gettext("obj_friendscene_1635")
    scr_blcon_x((flowey.x - 65), (flowey.y - 110))
    obj_blconwideslave.sprite_index = spr_blconabove
    obj_blconwideslave.depth = (depth - 10)
    OBJ_WRITER.depth = (depth - 20)
    con = 140
}
if (con == 140 && instance_exists(obj_blconwideslave) == false)
{
    caster_loop(hellsfx, 0.5, 0.6)
    pit = 0.8
    vol = 0.6
    flowey.laugh = 1
    with (obj_wrapshock)
    {
        freeze = false
        shock = 1
        s_timer = -999
    }
    with (obj_friendscene_gigavine)
        shimmy = 1
    wht = 0
    trickblack = 0
    lastwhite = 1
    con = 141
    white = 0
    depth = -100000
    global.typer = 7
    global.msg[0] = scr_gettext("obj_friendscene_1665")
    scr_blcon_x((flowey.x - 65), (flowey.y - 110))
    blcon.depth = (depth + 2)
    OBJ_WRITER.depth = (depth + 1)
    with (biig)
        event_user(1)
    blcon.sprite_index = spr_blconabove
}
if (con == 141)
{
    pit += 0.007
    vol += 0.005
    caster_set_pitch(hellsfx, pit)
    caster_set_volume(hellsfx, vol)
    with (obj_wrapshock)
        mf += 0.02
}
if (sidecon == 1)
{
    if (sans.y < 140 || sans.y > 240)
        sans.y += 12
    else
    {
        sidecon = 2
        sans.y = 152
    }
    if (sans.y > 680)
    {
        sans.x = (tor.x + 120)
        sans.y = -200
        sans.depth = (tor.depth + 1)
    }
    if (pap.y > 50)
    {
        pap.depth = (al.depth + 1)
        pap.y -= 18
        pap.x += 1
    }
    else
        pap.y = 40
}
if (border_d == 1)
{
    cx = 310
    cx2 = 330
    cy = 290
    cy2 = 310
    obj_heart.visible = true
    obj_heart.x = (cx + 2)
    obj_heart.y = (cy + 2)
}
if (ting_s == 1)
{
    snd_stop(snd_bell)
    snd_play(snd_bell)
    ting_s = 0
}
if (lastwhite == 1 && wht > 1.4)
{
    caster_free(all)
    room_goto(room_asrielappears)
}
