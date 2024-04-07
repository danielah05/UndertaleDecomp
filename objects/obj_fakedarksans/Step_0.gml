if instance_exists(obj_creeptree_sansmaker)
{
    if (x < (obj_creeptree_sansmaker.x + 28))
    {
        instance_destroy()
        if instance_exists(iii)
        {
            with (iii)
                instance_destroy()
        }
    }
}
if (obj_mainchara.x < gert)
    hspeed = 8
if instance_exists(obj_mainchara)
    gert = obj_mainchara.x
