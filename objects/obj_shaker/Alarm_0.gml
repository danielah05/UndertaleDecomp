if (hshake != 0)
{
    if (hshake < 0)
    {
        view_xview_set(myview, (view_xview_get(myview) + hshake))
        hshake += 1
    }
    if (hshake > 0)
        view_xview_set(myview, (view_xview_get(myview) + hshake))
    hshake = (-hshake)
}
if (vshake != 0)
{
    if (vshake > 0)
        view_yview_set(myview, (view_yview_get(myview) + vshake))
    if (vshake < 0)
    {
        view_yview_set(myview, (view_yview_get(myview) + vshake))
        vshake += 1
    }
    vshake = (-vshake)
}
alarm[myview] = shakespeed
if (hshake == 0 && vshake == 0)
    instance_destroy()
