myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_mkid_goner_91")
if (type == 1)
{
    global.msg[0] = scr_gettext("obj_mkid_goner_95")
    global.msg[1] = scr_gettext("obj_mkid_goner_96")
    global.msg[2] = scr_gettext("obj_mkid_goner_97")
    global.msg[3] = scr_gettext("obj_mkid_goner_98")
    if (talkedto >= 1)
        global.msg[0] = scr_gettext("obj_mkid_goner_102")
    if (FL_HaveUmbrella == 1)
    {
        global.msg[0] = scr_gettext("obj_mkid_goner_107")
        global.msg[1] = scr_gettext("obj_mkid_goner_108")
        global.msg[2] = scr_gettext("obj_mkid_goner_109")
        global.msg[3] = scr_gettext("obj_mkid_goner_110")
        global.msg[4] = scr_gettext("obj_mkid_goner_111")
        if (talkedto >= 1)
            global.msg[0] = scr_gettext("obj_mkid_goner_115")
        if (FL_Fun >= 90)
            FL_Fun = 0
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
