if (movement == 1)
{
    if (confuse == 0)
    {
        y -= global.sp
        if (control_check(CancelButton) == 1)
            y += (global.sp / 2)
    }
    if (confuse == 1 && y < (global.idealborder[3] - 8))
    {
        y += global.sp
        if (control_check(CancelButton) == 1)
            y -= (global.sp / 2)
    }
}
if (movement == 2)
{
    if (jumpstage == 1 && vspeed == 0)
    {
        jumpstage = 2
        vspeed = -6
    }
}
