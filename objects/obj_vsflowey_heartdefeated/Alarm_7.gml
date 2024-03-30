caster_stop(all)
global.typer = 115
global.msg[0] = scr_gettext("obj_vsflowey_heartdefeated_114")
global.msg[1] = scr_gettext("obj_vsflowey_heartdefeated_115")
alarm[8] = 150
con = 4
dingus = 1
global.msc = 0
var xx = 100
if (global.language == "ja")
    xx = 88
instance_create(xx, 300, obj_flowey_writer)
