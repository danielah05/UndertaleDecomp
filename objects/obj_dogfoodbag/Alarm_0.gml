myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_dogfoodbag_57")
if (global.kills == 0)
    global.msg[0] = scr_gettext("obj_dogfoodbag_59")
if (global.kills > 20)
{
    if (FL_DoggoStatus == DogStatus.Killed && FL_DogCoupleStatus == DogStatus.Killed && FL_GreaterDogStatus == DogStatus.Killed && FL_LesserDogStatus == DogStatus.Killed)
    {
        global.msg[0] = scr_gettext("obj_dogfoodbag_63")
        global.msg[1] = scr_gettext("obj_dogfoodbag_64")
        global.msg[1] = scr_gettext("obj_dogfoodbag_65")
    }
}
if (global.plot < 126 && scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
    global.msg[0] = scr_gettext("obj_dogfoodbag_68")
mydialoguer = instance_create(0, 0, obj_dialoguer)
