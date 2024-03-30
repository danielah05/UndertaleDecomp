side = choose(0, 1, 2)
if (side == prevside)
{
    side += 1
    if (side > 2)
        side = 0
}
prevside = side
if (side == 0)
{
    sidex = (x - random(30))
    sidey = ((y - legh) + random(40))
}
if (side == 1)
{
    sidex = (x + random(140))
    sidey = (((y - 35) - legh) - random(10))
}
if (side == 2)
{
    sidex = ((x + 110) + random(30))
    sidey = ((y - legh) + random(40))
}
if (side == 3)
{
    sidex = ((x + 100) + random(40))
    sidey = ((y - legh) + random(40))
}
instance_create(sidex, sidey, obj_mettshine)
