caster_free(all)
global.currentsong = caster_load("music/snowy.ogg")
myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
global.interact = 1
global.msg[0] = scr_gettext("obj_sansbyetrigger_124")
global.msg[1] = scr_gettext("obj_sansbyetrigger_125")
global.msg[2] = scr_gettext("obj_sansbyetrigger_126")
global.msg[3] = scr_gettext("obj_sansbyetrigger_127")
global.msg[4] = scr_gettext("obj_sansbyetrigger_128")
global.msg[5] = scr_gettext("obj_sansbyetrigger_129")
if (scr_murderlv() >= MurderLevel.Lv2TorielKilled)
{
    global.msg[0] = scr_gettext("obj_sansbyetrigger_132")
    global.msg[1] = scr_gettext("obj_sansbyetrigger_133")
    global.msg[2] = scr_gettext("obj_sansbyetrigger_134")
    global.msg[3] = scr_gettext("obj_sansbyetrigger_135")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
conversation = 2
