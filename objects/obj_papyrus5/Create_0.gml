xplot = 55
if (global.plot >= xplot)
    instance_destroy()
else
{
    conversation = 0
    image_yscale = 999
    if (global.plot >= (xplot - 1))
    {
        papyrus = instance_create(300, 60, obj_papyrus_room)
        conversation = 7
    }
    else
        papyrus = instance_create(100, 60, obj_papyrus_room)
    papyrus.sprite_index = spr_papyrus_dt
    obj_mainchara.cutscene = true
}
