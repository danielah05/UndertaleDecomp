for (i = 0; i < 20; i += 1)
{
    j = (-((seg + i)))
    if (j > 0)
    {
        if (j < segno)
            draw_sprite(spr_countersegment, 0, x, (((y - 360) + fakey) + (i * 40)))
        if (j == segno)
            draw_sprite(spr_countertop, 0, x, (((y - 360) + fakey) + (i * 40)))
    }
}
fakey += fakev
if (fakey > 40)
{
    fakey -= 40
    if (on == 1)
        seg -= 1
}
if (fakey < -40)
{
    fakey += 40
    if (on == 1)
        seg += 1
}
if (con == 1)
{
    fakey += 1
    timer += 1
    if (timer >= 17)
    {
        timer = 0
        con = 1.5
    }
}
if (con == 1.5)
{
    timer += 1
    if (timer > 30)
    {
        timer = 0
        con = 2
    }
}
if (con == 2)
{
    x = ((xstart + random(shake)) - (shake / 2))
    y = ((ystart + random(shake)) - (shake / 2))
    timer += 1
    if (timer > 60)
    {
        x = xstart
        y = ystart
        con = 3
        fakev = -1
    }
}
if (con == 3)
{
    fakev -= 0.25
    if (fakev <= -15)
    {
        fakev = -15
        on = 0
        con = 4
        timer = 0
    }
}
if (con == 4)
{
    timer += 1
    if (timer > 150)
        con = 5
}
if (con == 5)
{
    fakev = 0
    con = 6
}
