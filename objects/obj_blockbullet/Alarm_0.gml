if (site == 0)
{
    x = (object0.x - 300)
    y = object0.y
}
if (site == 1)
{
    x = (object0.x + 300)
    y = object0.y
}
if (site == 2)
{
    x = object0.x
    y = (object0.y + 300)
}
if (site == 3)
{
    x = object0.x
    y = (object0.y - 300)
}
move_towards_point(object0.x, object0.y, (8 * speedmod))
