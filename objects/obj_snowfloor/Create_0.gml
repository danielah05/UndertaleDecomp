x += 2.2
y += 1
yy = 0
xx = 0
while (yy < 5)
{
    snowx[xx, yy] = (x + (xx * 4))
    if (xx == 4)
        snowx[xx, yy] -= 0.2
    snowy[xx, yy] = (y + (yy * 4))
    dodraw[xx, yy] = 1
    moveme[xx, yy] = 1
    if (xx == 4)
    {
        xx = -1
        yy += 1
    }
    xx += 1
}
