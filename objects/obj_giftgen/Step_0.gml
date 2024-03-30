if (siner > 0)
{
    i = 0
    siner += 1
    repeat (3)
    {
        if (rr != 3)
            blt[i].sinex += 5
        else
            blt[i].sinex += 2
        blt[i].x = ((((sin(((blt[i].sinex / 100) * pi)) * ((global.idealborder[1] - global.idealborder[0]) - 45)) / 2) + global.idealborder[0]) + 67)
        i += 1
        if (siner > 20)
            vspeed -= 0.04
    }
}
