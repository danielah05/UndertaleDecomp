if (x < (thisx - 35))
    x = (thisx - 35)
if (x > (thisx + 25))
    x = (thisx + 25)
obj_asriel_body.x = x
obj_asriel_body.y = y
with (king)
{
    torsorot *= 0.7
    if (abs(torsorot) <= 1)
        torsorot = 0
}
if (freakcon > 0)
{
    if (freakcon == 1)
    {
        ftimer = 0
        hy = 20
        fhy = 90
        freakcon = 2
        event_user(7)
    }
    if (freakcon == 2)
    {
        fhy *= 0.8
        king.heady = ((fhy / 5) - 18)
        king.headrot -= fhy
        ftimer += 1
        if (ftimer > 34)
            freakcon = 3
    }
    if (freakcon == 3)
    {
        alarm[6] = 20
        y += 2
        king.heady += 8
        king.image_alpha -= 0.1
        if (king.image_alpha == 0)
            freakcon = 4
    }
}
