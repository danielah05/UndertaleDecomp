if (ignore_border == 0)
{
    if (movement == 13)
    {
        x = (global.idealborder[0] + 4)
        event_user(7)
        if (hspeed < 0)
            hspeed = 0
        jumpstage = 1
    }
    if (obj_battlecontroller.runaway != 1)
        x = (other.x + other.sprite_width)
    if (confuse == 1 && obj_battlecontroller.runaway != 1)
        x = ((other.x + other.sprite_width) + 8)
}
