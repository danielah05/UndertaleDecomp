if (instance_exists(obj_shaker) == false)
{
    if (on == 1)
    {
        view_xview_set(0, round(((obj_mainchara.x - (view_wview_get(0) / 2)) + 10)))
        view_yview_set(0, round(((obj_mainchara.y - (view_hview_get(0) / 2)) + 10)))
        if (view_yview_get(0) <= 0)
            view_yview_set(0, 0)
    }
}
if (on == 1)
{
    x = (view_xview_get(0) + stayx)
    y = (view_yview_get(0) + stayy)
    if (view_yview_get(0) <= 0)
        view_yview_set(0, 0)
}
if (on == 0)
{
    gravity = 0.4
    image_angle += ang
    if (y > room_height)
        instance_destroy()
}
if (view_yview_get(0) <= 0)
    view_yview_set(0, 0)
