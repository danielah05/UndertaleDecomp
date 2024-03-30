if (instance_exists(obj_menubone) || instance_exists(obj_menubone_bottom))
{
    instance_destroy()
    return;
}
h = 0
if instance_exists(obj_sansb)
{
    if (obj_sansb.hit_try == 14)
        h = 1
    if (obj_sansb.hit_try == 15)
        h = 1
    if (obj_sansb.hit_try == 16)
        h = 2
    if (obj_sansb.hit_try == 17)
        h = 2
    if (obj_sansb.hit_try >= 23)
    {
        instance_destroy()
        return;
    }
}
if (h != 2)
    alarm[0] = 1
if (h != 1)
{
    alarm[1] = 3
    alarm[2] = 20
    alarm[3] = 3
    alarm[4] = 20
}
alarm[5] = 50
