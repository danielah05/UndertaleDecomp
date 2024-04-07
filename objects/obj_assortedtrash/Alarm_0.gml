myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (y > 540)
{
    global.msg[0] = scr_gettext("obj_assortedtrash_79")
    global.msg[1] = scr_gettext("obj_assortedtrash_80")
    con = 1
}
if (y < 500 && y > 420)
    global.msg[0] = scr_gettext("obj_assortedtrash_86")
if (y < 340 && y > 280)
{
    global.msg[0] = scr_gettext("obj_assortedtrash_91")
    global.msg[1] = scr_gettext("obj_assortedtrash_92")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
object_index.talkedto += 1
