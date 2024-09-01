hh = ((obj_ultimatarget.x - x) / 20)
if (hh > 1)
    hh = 1
if (hh < -1)
    hh = -1
if (side == 0)
{
    if (hh < 0)
        hh = 0
}
if (side == 1)
{
    if (hh > 0)
        hh = 0
}
vv = ((obj_ultimatarget.y - y) / 20)
if (vv > 1)
    vv = 1
if (vv < -1)
    vv = -1
if (vv > 0)
    vv = 0
hspeed += hh
vspeed += vv
if (speed > 22)
    speed = 22
image_angle = direction
huer += 20
image_blend = old_make_color_hsv(huer, 60, 255)
trail.image_blend = image_blend
