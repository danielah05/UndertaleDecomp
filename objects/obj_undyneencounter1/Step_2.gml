if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
        view_xview_set(0, round(((x - (view_wview_get(0) / 2)) + (sprite_width / 2))))
    if (FL_HaveUmbrella == 1)
    {
        with (obj_mainchara)
            view_xview_set(0, floor(((x - 160) + (sprite_width / 2))))
    }
}
