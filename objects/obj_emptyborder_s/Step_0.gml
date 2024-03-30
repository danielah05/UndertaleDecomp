x = idealx
y = idealy
w = sprite_width
h = sprite_height
if (obj_heart.x < (x + 4))
{
    if (x > maxx)
    {
        idealx -= 0.5
        x -= 0.5
        event_user(0)
    }
    else
    {
        x = maxx
        idealx = maxx
    }
    obj_heart.x = ceil((x + 5))
}
if (obj_heart.y < (y + 4))
    obj_heart.y = (y + 4)
if (obj_heart.x > ((x + w) - 16))
    obj_heart.x = ((x + w) - 16)
if (obj_heart.y > ((y + h) - 16))
{
    if (y < maxy && x == maxx)
    {
        idealy += 0.5
        y += 0.5
        event_user(0)
    }
    obj_heart.y = floor(((y + h) - 17))
}
