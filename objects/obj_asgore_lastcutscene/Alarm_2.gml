asgorex = (xstart + shudder)
shudder = (-shudder)
if (shudder > 0)
    shudder -= 2
alarm[2] = 2
if (abs(shudder) < 2)
{
    shudder = 0
    if (hearts == 1)
        con = 30
    else
        con = 58
    alarm[2] = -1
}
