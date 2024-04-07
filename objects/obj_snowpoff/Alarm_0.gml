myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (tt == 0)
    global.msg[0] = scr_gettext("obj_snowpoff_100")
if (tt == 1)
    global.msg[0] = scr_gettext("obj_snowpoff_101")
if (tt == 2)
    global.msg[0] = scr_gettext("obj_snowpoff_102")
if (tt == 3)
    global.msg[0] = scr_gettext("obj_snowpoff_103")
if (tt == 4)
    global.msg[0] = scr_gettext("obj_snowpoff_104")
if (tt == 5)
    global.msg[0] = scr_gettext("obj_snowpoff_105")
if (tt == 6)
    global.msg[0] = scr_gettext("obj_snowpoff_106")
if (tt >= 7 && FL_GotSnowpoffGold == 1)
{
    global.msg[0] = scr_gettext("obj_snowpoff_107")
    tt = 0
}
if (tt >= 7 && FL_GotSnowpoffGold == 0)
{
    global.msg[0] = scr_gettext("obj_snowpoff_108")
    global.gold += 30
    tt = 0
    FL_GotSnowpoffGold = 1
}
gg = tt
obj_snowpoff.tt = (tt + 1)
tt = gg
mydialoguer = instance_create(0, 0, obj_dialoguer)
