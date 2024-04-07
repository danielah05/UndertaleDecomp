if (FL_InteractedWithGarbageSavepoint < 4)
    con = 0
else
    con = 99
if (global.plot > 112)
{
    instance_destroy()
    return;
}
else
{
    if (global.entrance == 1)
    {
        mkid = instance_create((obj_mainchara.x - 8), obj_mainchara.y, obj_mkid_actor)
        mkid.sprite_index = mkid.dsprite
        mkid.follow = 2.1
    }
    if (global.entrance == 2)
    {
        mkid = instance_create(obj_mainchara.x, (obj_mainchara.y + 8), obj_mkid_actor)
        mkid.sprite_index = mkid.lsprite
        mkid.follow = 2.1
    }
}
image_xscale = 9
image_yscale = 9
