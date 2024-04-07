if (conversation == 1)
{
    myinteract = 3
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    conversation = 2
}
if (conversation == 2)
{
    papyrus.sprite_index = papyrus.ltsprite
    papyrus.image_index = 0
    conversation = 3
    xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    alarm[4] = 20
}
if (conversation == 4)
{
    global.msc = 240
    global.msg[0] = scr_gettext("obj_papyrus6_138")
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 6
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == false)
{
    papyrus.hspeed = 4
    papyrus.npcdir = 1
    global.interact = 0
    conversation = 7
    instance_destroy()
}
