FL_UnknownBoolean17 = false
if (FL_UndyneDateStatus == 4)
    FL_UndyneDateStatus = 5
if (global.plot > 116)
{
    instance_destroy()
    return;
}
else
{
    nap = instance_create(300, 60, obj_damndummy)
    nap.sprite_index = spr_napstablook_u
    nap.float = true
}
image_xscale = 5
con = 0
tc = 0
