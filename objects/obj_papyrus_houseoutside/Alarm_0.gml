myinteract = 3
global.msc = 0
global.typer = 19
global.facechoice = 4
global.faceemotion = 0
if (FL_PapyrusFightFlirt == 1)
    global.msg[0] = scr_gettext("obj_papyrus_houseoutside_109")
else
    global.msg[0] = scr_gettext("obj_papyrus_houseoutside_110")
global.msg[1] = scr_gettext("obj_papyrus_houseoutside_111")
global.msg[2] = scr_gettext("obj_papyrus_houseoutside_112")
global.msg[3] = scr_gettext("obj_papyrus_houseoutside_113")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
con = 1
