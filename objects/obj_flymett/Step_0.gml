siner += 1
y += sin((siner / 3))
if (movemode == 1)
{
    siner2 += 1
    x += (sin((siner / 12)) * 6)
}
if (overmode == 1)
{
    if (con == 0)
    {
        event_user(1)
        con = 1
    }
    if (con == 1)
    {
        alarm[2] = 20
        if (movemode == 1)
            alarm[2] = 30
        con = 2
    }
}
if (overmode == 2)
{
    if (con == 0)
    {
        event_user(1)
        con = 1
    }
    if (con == 1)
    {
        alarm[2] = 40
        if (movemode == 1)
            alarm[2] = 40
        con = 2
    }
}
