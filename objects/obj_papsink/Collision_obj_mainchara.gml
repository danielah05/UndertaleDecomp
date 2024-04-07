if instance_exists(obj_kitchenchecker)
{
    if (obj_kitchenchecker.level == 1 || obj_kitchenchecker.level == 0)
    {
        with (obj_mainchara)
        {
            x = xprevious
            y = yprevious
            moving = false
        }
    }
}
