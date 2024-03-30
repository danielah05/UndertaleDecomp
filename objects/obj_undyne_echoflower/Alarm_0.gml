myinteract = 3
global.msc = 0
global.typer = 38
global.facechoice = 0
global.faceemotion = 0
if (global.plot < 118)
{
    with (obj_mainchara)
        uncan = 1
    global.msg[0] = scr_gettext("obj_undyne_echoflower_96")
    con = 1
}
else
{
    global.typer = 5
    global.msg[0] = scr_gettext("obj_undyne_echoflower_102")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
object_index.talkedto += 1
