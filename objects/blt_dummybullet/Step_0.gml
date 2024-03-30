if (part < 1)
{
    remdir = direction
    move_towards_point((obj_heart.x + 2), (obj_heart.y + 2), 3)
    angel = direction
    direction = remdir
    if (side == 0 && x > (global.idealborder[0] + 4))
        event_user(1)
    if (side == 1 && x < (global.idealborder[1] - 22))
        event_user(1)
    if (side == 2 && y > (global.idealborder[2] + 4))
        event_user(1)
    if (side == 3 && y < (global.idealborder[3] - 22))
        event_user(1)
}
