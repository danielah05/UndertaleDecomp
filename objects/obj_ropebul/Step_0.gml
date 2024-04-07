if (type == 0 && go == 1)
{
    if (y > arb || y < arb2)
    {
        y = yprevious
        vspeed = (-vspeed)
        with (rope)
        {
            y = yprevious
            vspeed = (-vspeed)
        }
    }
}
if (x < (global.idealborder[0] - 20))
    instance_destroy()
