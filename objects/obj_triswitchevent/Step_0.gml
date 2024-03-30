if (con == 0 && switches == 2 && obj_mainchara.x < 390 && obj_mainchara.x > 380 && obj_mainchara.y < 90 && global.interact == 0)
{
    global.facechoice = 0
    global.typer = 5
    global.msc = 0
    global.interact = 1
    snd_play(snd_phone)
    global.msg[0] = scr_gettext("obj_triswitchevent_120")
    global.msg[1] = scr_gettext("obj_triswitchevent_121")
    global.msg[2] = scr_gettext("obj_triswitchevent_122")
    global.msg[3] = scr_gettext("obj_triswitchevent_123")
    global.msg[4] = scr_gettext("obj_triswitchevent_124")
    global.plot = 140
    instance_create(0, 0, obj_dialoguer)
    con = 0.1
    alarm[4] = 28
}
if (con == 1.1 && instance_exists(OBJ_WRITER) == false)
{
    con = 2
    global.interact = 0
}
if (con == 2 && obj_mainchara.x < 280 && global.interact == 0 && switches < 3 && won == 0 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    global.facechoice = 6
    global.faceemotion = 3
    global.typer = 47
    global.msc = 0
    global.msg[0] = scr_gettext("obj_triswitchevent_147")
    global.msg[1] = scr_gettext("obj_triswitchevent_148")
    global.msg[2] = scr_gettext("obj_triswitchevent_149")
    global.msg[3] = scr_gettext("obj_triswitchevent_150")
    global.msg[4] = scr_gettext("obj_triswitchevent_151")
    global.msg[5] = scr_gettext("obj_triswitchevent_152")
    global.plot = 140
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3 || con == 1 || con == 0.1 || con == 1.1)
{
    if instance_exists(OBJ_WRITER)
    {
        if (donkeykongismyfavoritemarvelsuperhero == 0)
        {
            wrx = (OBJ_WRITER.writingx - view_xview_get(0))
            dgx = (obj_dialoguer.x - view_xview_get(0))
            donkeykongismyfavoritemarvelsuperhero = 1
        }
        if (donkeykongismyfavoritemarvelsuperhero == 1)
        {
            OBJ_WRITER.myx = (view_xview_get(0) + wrx)
            OBJ_WRITER.writingx = (view_xview_get(0) + wrx)
            if instance_exists(obj_face)
            {
                obj_face.x = (view_xview_get(0) + 24)
                OBJ_WRITER.myx = ((view_xview_get(0) + wrx) + 58)
                OBJ_WRITER.writingx = ((view_xview_get(0) + wrx) + 58)
            }
            obj_dialoguer.xx = view_xview_get(0)
            obj_dialoguer.x = (view_xview_get(0) + dgx)
        }
        if (con == 3 && OBJ_WRITER.stringno == 2)
        {
            if (deltaco == 0)
                deltaco = 1
        }
    }
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    con = 4
    global.interact = 0
}
if (switches == 3 && con < 4)
{
    won = 1
    deltaco = 1
}
if (won == 1 && obj_mainchara.x < 280 && global.interact == 0)
{
    global.interact = 1
    snd_play(snd_phone)
    global.facechoice = 6
    global.faceemotion = 6
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_triswitchevent_213")
    global.msg[1] = scr_gettext("obj_triswitchevent_214")
    global.msg[2] = scr_gettext("obj_triswitchevent_215")
    global.msg[2] = scr_gettext("obj_triswitchevent_216")
    global.msg[3] = scr_gettext("obj_triswitchevent_217")
    global.msg[4] = scr_gettext("obj_triswitchevent_218")
    global.msg[5] = scr_gettext("obj_triswitchevent_219")
    global.plot = 140
    instance_create(0, 0, obj_dialoguer)
    con = 8
    FL_Laser3Off = 1
    global.plot = 140
}
if (con == 8)
{
    global.interact = 0
    con = 9
}
if (deltaco == 1)
{
    with (ff)
        image_alpha -= 0.05
    if (ff.image_alpha < 0.06)
    {
        with (ff)
            instance_destroy()
        deltaco = 2
    }
}
