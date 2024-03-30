if (con == 1)
{
    global.msc = 0
    global.typer = 60
    global.facechoice = 7
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_asgore_prebarrier_event_78")
    global.msg[1] = scr_gettext("obj_asgore_prebarrier_event_79")
    global.msg[2] = scr_gettext("obj_asgore_prebarrier_event_80")
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    global.plot = 207
    con = 50
    global.interact = 0
    asg.hspeed = 3
    asg.sprite_index = asg.rsprite
    asg.image_speed = 0.2
}
if (con == 50 || con == 51 || con == 52)
{
    if (asg.x > 580)
    {
        asg.x = 580
        asg.sprite_index = asg.utsprite
        asg.image_index = 0
    }
}
if (con == 50 && obj_mainchara.x > 480 && global.interact == 0)
{
    global.interact = 1
    global.msc = 0
    global.typer = 60
    global.facechoice = 7
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_asgore_prebarrier_event_112")
    global.msg[1] = scr_gettext("obj_asgore_prebarrier_event_113")
    global.msg[2] = scr_gettext("obj_asgore_prebarrier_event_114")
    instance_create(0, 0, obj_dialoguer)
    con = 51
}
if (con == 51 && asg.x == 580)
{
    global.plot = 208
    con = 52
}
if (con == 52 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 0
    asg.sprite_index = asg.usprite
    asg.image_speed = 0.25
    asg.vspeed = -2
    asg.image_alpha -= 0.05
    if (asg.image_alpha < 0.1)
    {
        with (asg)
            instance_destroy()
        instance_destroy()
    }
}
