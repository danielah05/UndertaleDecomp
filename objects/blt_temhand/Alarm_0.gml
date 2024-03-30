if (temno < 8)
{
    temno += 1
    temx1[temno] = x
    temy1[temno] = y
    xdif = (x - (obj_heart.x + 6))
    ydif = (y - (obj_heart.y + 6))
    final = (abs(xdif) - abs(ydif))
    if (final <= 0)
    {
        if (ydif >= 0)
            direction = 90
        else
            direction = 270
    }
    else if (xdif >= 0)
        direction = 180
    else
        direction = 0
    temdir[temno] = direction
    if (temdir[temno] == (temdir[(temno - 1)] + 180) || temdir[temno] == (temdir[(temno - 1)] - 180))
    {
        direction -= 90
        temdir[temno] -= 90
    }
    if (temdir[temno] == temdir[(temno - 1)])
    {
        temx1[temno] = 0
        temno -= 1
    }
    if (temno > 0)
    {
        if (direction == 90 && temdir[(temno - 1)] == 180)
            temx2[(temno - 1)] = x
        if (direction == 180 && temdir[(temno - 1)] == 90)
            temy2[(temno - 1)] = y
    }
    alarm[0] = (60 + random(20))
    temtim[temno] = alarm[0]
}
else
    reversal = 1
