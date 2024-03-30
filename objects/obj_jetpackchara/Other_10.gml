if instance_exists(obj_counterscroller)
{
    if (obj_counterscroller.fakev > -1)
        obj_counterscroller.fakev -= 6
    if (obj_counterscroller.fakev < -1)
        obj_counterscroller.fakev = -1
    if (instance_exists(obj_shaker) == false)
        scr_shake(2, 2, 2)
}
