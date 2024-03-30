b = instance_create(x, y, obj_bouncelight)
b.vspeed = (((-vspeed) / 2) - random(1))
b.hspeed = hspeed
b.hspeed += (2 - random(4))
b.image_angle = image_angle
b.image_xscale = image_xscale
b.image_yscale = image_yscale
if instance_exists(obj_counterscroller)
{
    if (obj_counterscroller.fakev > -2)
        obj_counterscroller.fakev -= 6
    if (obj_counterscroller.fakev < -3)
        obj_counterscroller.fakev = -3
    snd_play(snd_chug)
    if (instance_exists(obj_shaker) == false)
        scr_shake(2, 2, 2)
}
instance_destroy()
