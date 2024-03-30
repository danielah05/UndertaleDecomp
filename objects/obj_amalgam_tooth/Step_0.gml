if (con == 2)
{
    vspeed = 0
    anchor = 1
    con = 3
}
if (anchor == 1)
{
    if (top == 1)
        y = global.idealborder[2]
    if (top == 0)
        y = (global.idealborder[3] - sprite_height)
}
if (con == 11)
    instance_destroy()
