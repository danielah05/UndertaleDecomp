if (won == 0)
{
    if obj_time.left
    {
        if (x > 330)
            x -= 4
    }
    if obj_time.right
    {
        if (x < 620)
            x += 4
    }
}
if (won == 0)
{
    if (obj_counterscroller.fakev < 15)
        obj_counterscroller.fakev += 0.25
}
myfakev = obj_counterscroller.fakev
dist -= myfakev
if (dist < 200 || timertime < 90)
    eligible = 0
if (con == 1)
{
    if (mett.x < (xx + 150))
        con = 2
}
if (dist < 600)
{
    if instance_exists(mett)
        mett.alarm[1] = -1
}
if (con == 2)
{
    mett.overmode = 1
    if ((dist / maxdist) < 0.75)
        mett.movemode = 1
    if ((dist / maxdist) < 0.35)
        mett.overmode = 2
}
if (con == 10)
{
    mett.overmode = 0
    mett.movemode = 0
    mett.mode = 4
    mett.con = 9
    wrong = 0
    if (mett.y < 200)
        mett.y += 5
    if (mett.x < 580)
    {
        mett.x += 4
        wrong = 1
    }
    if (mett.x > 590)
    {
        mett.x -= 4
        wrong = 1
    }
    if (wrong == 0)
    {
        with (obj_cookhud)
            finished = true
        con = 11
        obj_counterscroller.seg = -98
        obj_counterscroller.on = 1
    }
}
if (con == 11)
{
    if (mett.y < 200)
        mett.y += 5
    if (mett.x < 580)
        mett.x += 4
    if (obj_counterscroller.fakev > 2)
        obj_counterscroller.fakev -= 1
    else
    {
        con = 12
        instance_create(0, 0, obj_musfadeout)
    }
}
if (con == 12)
{
    if (obj_counterscroller.seg <= -104)
    {
        obj_counterscroller.fakev = 0
        con = 13
    }
    if (mett.y < 200)
        mett.y += 5
    if (mett.x < 580)
        mett.x += 4
}
if (con == 13)
{
    remx = obj_mainchara.x
    remy = obj_mainchara.y
    obj_mainchara.x = 400
    obj_mainchara.y = 100
    global.typer = 27
    global.msc = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_jetpackchara_198")
    global.msg[1] = scr_gettext("obj_jetpackchara_199")
    global.msg[2] = scr_gettext("obj_jetpackchara_200")
    global.msg[3] = scr_gettext("obj_jetpackchara_201")
    global.msg[4] = scr_gettext("obj_jetpackchara_203")
    ggg = instance_create(0, 0, obj_dialoguer)
    ggg.side = 0
    con = 14
}
if (con == 14 && instance_exists(OBJ_WRITER) == false)
{
    mett.x += 8
    if (mett.x > 800)
        con = 15
}
if (con == 15)
{
    mett.x -= 8
    if (mett.x < (xx + 240))
        con = 16
}
if (con == 16)
{
    global.msg[0] = scr_gettext("obj_jetpackchara_223")
    global.msg[1] = scr_gettext("obj_jetpackchara_224")
    global.msg[2] = scr_gettext("obj_jetpackchara_225")
    ggg = instance_create(0, 0, obj_dialoguer)
    ggg.side = 0
    con = 17
}
if (con == 17 && instance_exists(obj_dialoguer) == false)
{
    mett.x += 8
    obj_counterscroller.fakev = -3
    con = 18
    alarm[4] = 60
}
if (con == 18)
{
    if (x < 467)
        x += 3
    if (x > 473)
        x -= 3
    mett.x += 8
}
if (con == 19)
{
    obj_counterscroller.fakev = 0
    if (y < 367)
        y += 3
    else
        y = 367
    if (x < 467)
        x += 4
    if (x > 473)
        x -= 4
    if (x >= 467 && x <= 473)
        x = 470
    if (view_yview_get(0) < 240)
        view_yview_set(0, (view_yview_get(0) + 6))
    else
        view_yview_set(0, 240)
    if (view_yview_get(0) == 240 && x == 470 && y == 367)
    {
        with (mett)
            instance_destroy()
        view_yview_set(0, 240)
        con = 20
    }
}
if (con == 20)
{
    con = 21
    obj_cookshowevent.con = 70
}
if (con == 30)
{
    if (obj_counterscroller.fakev < 0)
        obj_counterscroller.fakev += 0.25
    if (obj_counterscroller.fakev > 0)
        obj_counterscroller.fakev -= 0.25
    if (abs(obj_counterscroller.fakev) < 0.5)
        obj_counterscroller.fakev = 0
    mett.overmode = 0
    mett.movemode = 0
    mett.alarm[1] = -1
    if (mett.y < 200)
        mett.y += 5
    if (mett.x < 580)
        mett.x += 4
    if (abs(obj_counterscroller.fakev) < 0.5)
    {
        with (obj_cookhud)
            finished = true
        instance_create(0, 0, obj_musfadeout)
        obj_counterscroller.fakev = 0
        con = 31
        alarm[4] = 15
    }
}
if (con == 32)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_jetpackchara_301")
    global.msg[1] = scr_gettext("obj_jetpackchara_302")
    global.msg[2] = scr_gettext("obj_jetpackchara_303")
    global.msg[3] = scr_gettext("obj_jetpackchara_304")
    global.msg[4] = scr_gettext("obj_jetpackchara_305")
    global.msg[5] = scr_gettext("obj_jetpackchara_306")
    global.msg[6] = scr_gettext("obj_jetpackchara_307")
    scr_regulartext()
    snd_play(snd_phone)
    con = 33
}
if (con == 33)
{
    if (mett.y < 240)
        mett.y += 5
    if (mett.x < 580)
        mett.x += 4
}
if (con == 33 && instance_exists(OBJ_WRITER) == false)
{
    FL_FailedJetpackSegment = 1
    global.typer = 27
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_jetpackchara_324")
    global.msg[1] = scr_gettext("obj_jetpackchara_325")
    global.msg[2] = scr_gettext("obj_jetpackchara_326")
    global.msg[3] = scr_gettext("obj_jetpackchara_327")
    global.msg[4] = scr_gettext("obj_jetpackchara_328")
    global.msg[5] = scr_gettext("obj_jetpackchara_329")
    global.msg[6] = scr_gettext("obj_jetpackchara_330")
    global.msg[7] = scr_gettext("obj_jetpackchara_331")
    global.msg[8] = scr_gettext("obj_jetpackchara_332")
    global.msg[9] = scr_gettext("obj_jetpackchara_333")
    global.msg[10] = scr_gettext("obj_jetpackchara_334")
    global.msg[11] = scr_gettext("obj_jetpackchara_335")
    global.msg[12] = scr_gettext("obj_jetpackchara_336")
    instance_create(0, 0, obj_dialoguer)
    con = 34
}
if (con == 34 && instance_exists(OBJ_WRITER))
{
    if (mett.y < 240)
        mett.y += 5
}
if (con == 34 && instance_exists(OBJ_WRITER) == false)
{
    with (mett)
        vspeed = -4
    con = 17
}
if (dist <= 1 && timertime >= 0 && won == 0)
{
    won = 1
    con = 10
}
if (dist > 1 && timertime <= 0 && won == 0)
{
    won = 2
    con = 30
}
