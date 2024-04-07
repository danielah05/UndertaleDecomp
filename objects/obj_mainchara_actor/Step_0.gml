if (d == 0)
    scr_depth()
if (pathmode == 1)
{
    if (path_position == 1)
    {
        image_index = 0
        image_speed = 0
    }
    else if (path_speed != 0)
        image_speed = 0.2
}
if (pathmode == 0)
{
    if (speed == 0)
    {
        image_index = 0
        image_speed = 0
    }
}
if (speed > 0)
    image_speed = 0.2
if (fun == false)
    scr_npcdir(0)
