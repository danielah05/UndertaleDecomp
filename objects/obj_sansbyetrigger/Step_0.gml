if (conversation == 2 && instance_exists(OBJ_WRITER) == false)
{
    if (obj_mainchara.x > obj_sans_interactable1.x)
        obj_sans_interactable1.hspeed = -3
    if (obj_mainchara.x < obj_sans_interactable1.x)
        obj_sans_interactable1.hspeed = 4
    obj_sans_interactable1.image_speed = 0.25
    alarm[2] = 20
    conversation = 3
}
if (global.plot == 37)
    instance_destroy()
