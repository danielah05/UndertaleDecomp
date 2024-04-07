myinteract = 3
global.msc = 0
global.typer = 27
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_mettnews_artifact_117")
if (type > 0 && type < 7)
{
    basic = (716 + (type * 4))
    if (talkedto > 0)
        basic += 2
    global.msc = basic
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
mydialoguer.side = 0
talkedto += 1
