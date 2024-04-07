if (maxer < 1.1)
    maxer += 0.1
image_xscale = (maxer + (sin((siner / 6)) * 0.1))
image_yscale = (maxer + (sin((siner / 6)) * 0.1))
xprev4 = xprev3
yprev4 = yprev3
xprev3 = xprev2
yprev3 = yprev2
xprev2 = xprevious
yprev2 = yprevious
siner += 1
pb = bounces
if (bounces < 7)
{
    if (x > (room_width - 20) && hspeed > 0)
    {
        hspeed = (-hspeed)
        bounces += 1
    }
}
if (bounces < 7)
{
    if (x < 20 && hspeed < 0)
    {
        hspeed = (-hspeed)
        bounces += 1
    }
}
if (bounces < 7)
{
    if (vspeed > 0 && y > (room_height - 20))
    {
        vspeed = (-vspeed)
        bounces += 1
    }
}
if (bounces < 7)
{
    if (vspeed < 0 && y < 20)
    {
        bounces += 1
        vspeed = (-vspeed)
    }
}
if (bounces > pb)
{
    if (instance_exists(obj_vsflowey_shaker) == false)
    {
        instance_create(0, 0, obj_vsflowey_shaker)
        snd_play(snd_impact)
    }
}
if (x > (room_width + 300))
    event_user(7)
if (x < -300)
    event_user(7)
