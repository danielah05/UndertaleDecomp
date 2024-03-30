if (conversation == 0)
{
    toriel = instance_create(140, 240, obj_toroverworld3)
    global.msc = 0
    global.typer = 4
    global.interact = 1
    global.facechoice = 1
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_torieltrigger5_260")
    instance_create(0, 0, obj_dialoguer)
    conversation = 1
    fademusicout = 1
    global.interact = 1
}
