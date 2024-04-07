siner += 1
y += (sin((siner / 10)) / 2)
if instance_exists(obj_multitileevent)
{
    if (middle == 1)
    {
        xx = view_xview_get(0)
        if (xx < 0)
            xx = 0
        if (x < (xx + 60))
        {
            x += 3
            if instance_exists(obj_songwriter)
                obj_songwriter.x += 3
        }
        if (x > (xx + 80))
        {
            x -= 3
            if instance_exists(obj_songwriter)
                obj_songwriter.x -= 3
        }
    }
    if (middle == 2)
    {
        if (xx < 0)
            xx = 0
        if (x < (xx + 150))
            x += 3
        if (x > (xx + 170))
            x -= 3
    }
}
