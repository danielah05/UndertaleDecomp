myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_snowdecahedron_102")
global.msg[1] = scr_gettext("obj_snowdecahedron_103")
if (murder == 1)
    global.msg[0] = scr_gettext("obj_snowdecahedron_104")
mydialoguer = instance_create(0, 0, obj_dialoguer)
