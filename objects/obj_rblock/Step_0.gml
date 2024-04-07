if (goldshift == 1 && myside == 0)
{
    goldshift = 0
    y -= 40
    myside = 2
}
if (goldshift == 1 && myside == 2)
{
    goldshift = 0
    y += 40
    myside = 0
}
if (goldshift == 1 && myside == 1)
{
    goldshift = 0
    x -= 40
    myside = 3
}
if (goldshift == 1 && myside == 3)
{
    goldshift = 0
    x += 40
    myside = 1
}
