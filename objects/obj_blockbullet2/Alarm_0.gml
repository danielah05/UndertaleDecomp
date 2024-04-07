if (site == 0)
    truesite = 1
if (site == 1)
    truesite = 0
if (site == 2)
    truesite = 3
if (site == 3)
    truesite = 2
image_index = truesite
if (site == 0)
{
    x = (obj_spearblocker.x - 300)
    y = obj_spearblocker.y
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
active = true
