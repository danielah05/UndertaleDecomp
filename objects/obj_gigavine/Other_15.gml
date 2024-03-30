if (saved == 0)
    instance_destroy()
else
{
    active = save_active
    visible = save_visible
    image_xscale = save_xscale
    image_blend = save_blend
    image_alpha = save_alpha
    con = save_con
    alarm[4] = save_alarm
}
