if (type != 1)
    event_user(7)
if (type == 1)
{
    if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
        event_user(7)
}
