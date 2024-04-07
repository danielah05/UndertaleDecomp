if (ignore_border == 0)
{
    if (movement == 11)
    {
        x = (global.idealborder[1] - 16)
        event_user(7)
        if (hspeed > 0)
            hspeed = 0
        if (movement == 11)
            jumpstage = 1
    }
    x = (other.x - sprite_width)
    if (confuse == 1 && obj_battlecontroller.runaway != 1)
        x = (other.x - 8)
}
