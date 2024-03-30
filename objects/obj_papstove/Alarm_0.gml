myinteract = 3
global.msc = 556
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msc = 0
global.msg[0] = scr_gettext("obj_papstove_71")
if instance_exists(obj_papyrusparent)
{
    scr_papface(0, 0)
    global.msg[1] = scr_gettext("obj_papstove_75")
    global.msg[2] = scr_gettext("obj_papstove_76")
    global.msg[3] = scr_gettext("obj_papstove_77")
    global.msg[4] = scr_gettext("obj_papstove_78")
    global.msg[5] = scr_gettext("obj_papstove_79")
}
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_papstove_82")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
