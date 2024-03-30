movetype = 1
lightning_timer = 400
visible = false
mtb = instance_create(x, y, obj_mettheart_burst)
mtb.homex = xstart
mtb.homey = ystart
with (obj_mettb_body)
{
    if (noarm == 0)
        event_user(2)
}
