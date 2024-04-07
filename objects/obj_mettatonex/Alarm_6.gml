global.msc = 0
with (OBJ_WRITER)
    instance_destroy()
turns += 1
textsize = 0
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_mettatonex_167")
if (turns == 1)
{
    textsize = 0
    global.msg[0] = scr_gettext("obj_mettatonex_190")
}
if (turns == 2)
{
    textsize = 0
    global.msg[0] = scr_gettext("obj_mettatonex_196")
}
if (turns == 3)
{
    textsize = 0
    global.msg[0] = scr_gettext("obj_mettatonex_202")
}
if (turns == 4)
{
    textsize = 0
    global.msg[0] = scr_gettext("obj_mettatonex_208")
}
if (turns == 5)
{
    textsize = 1
    global.msg[0] = scr_gettext("obj_mettatonex_214")
    global.msg[1] = scr_gettext("obj_mettatonex_215")
    if (global.osflavor >= OSFlavors.Playstation)
        global.msg[1] = scr_gettext("obj_mettatonex_215_console")
    if (os_type == os_ps4 && extension_stubfunc_real())
        global.msg[1] = scr_gettext("obj_mettatonex_215_console_kbd")
    global.msg[2] = scr_gettext("obj_mettatonex_216")
}
if (turns == 6)
{
    textsize = 1
    global.msg[0] = scr_gettext("obj_mettatonex_222")
    global.msg[1] = scr_gettext("obj_mettatonex_223")
    obj_mettb_body.dancewait = 20
}
if (turns == 7)
{
    obj_mettb_body.dancewait = 18
    textsize = 0
    global.msg[0] = scr_gettext("obj_mettatonex_231")
}
if (turns == 8)
{
    textsize = 1
    global.msg[0] = scr_gettext("obj_mettatonex_237")
    obj_mettb_body.dancewait = 15
}
if (turns == 9)
{
    textsize = 0
    global.msg[0] = scr_gettext("obj_mettatonex_244")
    obj_mettb_body.dancewait = 12
}
if (turns == 10)
{
    global.msg[0] = scr_gettext("obj_mettatonex_253")
    obj_mettb_body.dancewait = 9
}
if (turns == 11)
{
    global.msg[0] = scr_gettext("obj_mettatonex_259")
    obj_mettb_body.dancewait = 6
}
if (turns == 12)
{
    obj_mettb_body.dancewait = 3
    textsize = 1
    global.msg[0] = scr_gettext("obj_mettatonex_267")
}
if (turns == 13)
{
    obj_mettb_body.dancewait = 60
    textsize = 1
    global.msg[0] = scr_gettext("obj_mettatonex_274")
    global.msg[1] = scr_gettext("obj_mettatonex_275")
}
if (turns == 14)
{
    textsize = 1
    obj_mettb_body.dancewait = 80
    obj_mettb_body.face_set = 1
    global.faceemotion = 8
    global.msg[0] = scr_gettext("obj_mettatonex_285")
    global.msg[1] = scr_gettext("obj_mettatonex_286")
}
if (turns == 15)
{
    obj_mettb_body.face_set = 1
    global.faceemotion = 8
    textsize = 0
    obj_mettb_body.dancewait = 120
    global.msg[0] = scr_gettext("obj_mettatonex_297")
}
if (turns == 16)
{
    obj_mettb_body.face_set = 1
    global.faceemotion = 8
    obj_mettb_body.dancewait = 180
    global.msg[0] = scr_gettext("obj_mettatonex_307")
}
if (turns == 17)
{
    obj_mettb_body.face_set = 1
    global.faceemotion = 8
    obj_mettb_body.dancewait = 240
    global.msg[0] = scr_gettext("obj_mettatonex_317")
}
if (turns == 18)
{
    textsize = 1
    obj_mettb_body.dance = -1
    obj_mettb_body.face_set = 1
    global.faceemotion = 5
    global.msg[0] = scr_gettext("obj_mettatonex_329")
    global.msg[1] = scr_gettext("obj_mettatonex_330")
    global.msg[2] = scr_gettext("obj_mettatonex_331")
}
if (turns == 19)
{
    textsize = 1
    obj_mettb_body.face_set = 1
    global.faceemotion = 5
    obj_mettb_body.dance = -1
    global.msg[0] = scr_gettext("obj_mettatonex_353")
    global.msg[1] = scr_gettext("obj_mettatonex_354")
    global.msg[2] = scr_gettext("obj_mettatonex_355")
    global.msg[3] = scr_gettext("obj_mettatonex_356")
}
if (turns == 20)
{
    textsize = 1
    obj_mettb_body.face_set = 1
    global.faceemotion = 7
    obj_mettb_body.dance = -1
    global.msg[0] = scr_gettext("obj_mettatonex_368")
    global.msg[1] = scr_gettext("obj_mettatonex_369")
    global.msg[2] = scr_gettext("obj_mettatonex_370")
}
global.typer = 51
if (textsize == 0)
{
    blcon = instance_create((x + 200), y, obj_blconsm)
    blconwd = instance_create((blcon.x + 10), (blcon.y - 10), OBJ_NOMSCWRITER)
}
else
{
    blcon = instance_create((x + 200), y, obj_blconwdflowey)
    blconwd = instance_create((blcon.x + 20), (blcon.y - 10), OBJ_NOMSCWRITER)
}
global.border = 24
if (turns == 14 || turns == 15 || turns == 23)
    global.border = 27
if (turns == 10 || turns == 11 || turns == 18 || turns == 24)
    global.border = 26
if (turns == 6)
{
    with (mypart1)
        event_user(1)
}
if (turns == 13)
{
    with (mypart1)
        event_user(1)
}
if (turns == 19)
{
    with (mypart1)
        event_user(1)
}
if (turns == 20)
{
    with (mypart1)
        event_user(1)
}
if (turns == 25)
{
    with (mypart1)
        event_user(1)
}
if (turns == 5)
    global.border = 0
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
talked = 2
