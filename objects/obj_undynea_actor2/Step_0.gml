if (d == 0)
    scr_depth()
if (fun == false)
{
    myinteract = 0
    if (hhspeed == 0 && vhspeed == 0)
    {
        image_index = 0
        image_speed = 0
    }
    if (abs(hhspeed) > 0 || abs(vhspeed) > 0)
    {
        image_speed = 0.2
        if (image_index == 1 || image_index == 3)
            snd_play(snd_undynestep)
    }
}
gg = (room_width - view_wview_get(0))
hh = (room_height - view_hview_get(0))
if (view_xview_get(0) >= 0)
{
    x = (xhome + floor((view_xview_get(0) - (view_xview_get(0) * scrollspeed))))
    g = (x - xprevious)
}
if (view_xview_get(0) >= gg)
{
    x = (xhome + floor((gg - (gg * scrollspeed))))
    g = (x - xprevious)
}
if (view_yview_get(0) >= 0)
    y = (yhome + floor((view_yview_get(0) - (view_yview_get(0) * scrollspeed))))
if (view_yview_get(0) >= hh)
    y = (yhome + floor((hh - (hh * scrollspeed))))
xhome += hhspeed
yhome += vhspeed
