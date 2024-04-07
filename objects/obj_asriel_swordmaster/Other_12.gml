if (x > (thisx - 80))
{
    x -= 1
    if (x > (thisx - 35))
        king.torsorot += 1
}
if (x > (thisx - 70))
{
    x -= 2
    if (x > (thisx - 35))
        king.torsorot += 2
}
if (x > (thisx - 60))
{
    x -= 2
    if (x > (thisx - 35))
        king.torsorot += 3
}
if (x > (thisx - 40))
{
    x -= 3
    if (x > (thisx - 35))
        king.torsorot += 4
}
if (x > (thisx - 20))
    x -= 3
if (x > thisx)
    x -= 4
if (x > (thisx + 10))
    x -= 4
