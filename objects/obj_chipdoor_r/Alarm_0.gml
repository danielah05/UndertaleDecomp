myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_chipdoor_r_84")
if (sprite_index == spr_chipdoor_green)
    global.msg[0] = scr_gettext("obj_chipdoor_r_85")
if (global.plot > 132 && room == room_fire7)
    global.msg[0] = scr_gettext("obj_chipdoor_r_89")
if (global.plot > 163 && room == room_fire_walkandbranch2)
    global.msg[0] = scr_gettext("obj_chipdoor_r_94")
mydialoguer = instance_create(0, 0, obj_dialoguer)
