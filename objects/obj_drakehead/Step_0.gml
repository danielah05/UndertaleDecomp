if (down == 1)
{
    y += (a / 2)
    a += 0.05
    if (a >= 1)
        down = 0
}
if (down == 0)
{
    y += (a / 2)
    a -= 0.05
    if (a <= -1)
        down = 1
}
