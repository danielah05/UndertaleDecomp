myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sockdrawer_60")
if (room == room_torielroom)
{
    global.msc = 524
    if (x > 192)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_sockdrawer_66")
        global.msg[1] = scr_gettext("obj_sockdrawer_67")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_sockdrawer_68")
    }
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
