if (ignore_border == 0)
{
    if (movement == 2)
    {
        if (vspeed < 0)
            vspeed = 0
    }
    if (movement == 12)
    {
        y = (global.idealborder[2] + 4)
        event_user(7)
        if (vspeed < 0)
            vspeed = 0
        if (movement == 12)
            jumpstage = 1
    }
    y = (other.y + other.sprite_height)
    if (confuse == 1 && obj_battlecontroller.runaway != 1)
        y = ((other.y + other.sprite_height) + 8)
}
