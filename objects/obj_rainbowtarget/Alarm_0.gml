gig = instance_create(x, -10, obj_rainbowbolt)
gig.giga = giga
if (giga == 1)
{
    with (obj_rainbowbolt_realgen)
        event_user(1)
    gig.image_xscale = 4
    gig.ss = -2
}
else
{
    with (obj_rainbowbolt_realgen)
        event_user(0)
}
instance_destroy()
