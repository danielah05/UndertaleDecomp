if (global.plot > 113)
{
    instance_destroy()
    return;
}
con = 0
mkid = instance_create((x + 20), y, obj_mkid_actor)
mkid.image_speed = 0
image_yscale = 10
numero = 0
if (FL_MonsterKidUmbrellaStatus > 0)
    numero = 1
if (global.entrance == 2)
    alarm[2] = 2
