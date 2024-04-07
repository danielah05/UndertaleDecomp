if (x != global.idealborder[0])
{
    if (abs((x - global.idealborder[0])) <= 15)
        x = global.idealborder[0]
    else if (x > global.idealborder[0])
        x -= 15
    else
        x += 15
}
if (x == global.idealborder[0] || y < global.idealborder[2])
{
    if (y != global.idealborder[2])
    {
        if (abs((y - global.idealborder[2])) <= 15)
            y = global.idealborder[2]
        else if (y > global.idealborder[2])
            y -= 15
        else
            y += 15
    }
}
size = round(((global.idealborder[1] - global.idealborder[0]) / 5))
if (image_xscale != size)
{
    if (abs((size - image_xscale)) <= 6)
        image_xscale = size
    if (image_xscale > size)
        image_xscale -= 6
    if (image_xscale < size)
        image_xscale += 6
}
if (instant == 1)
    y = global.idealborder[2]
if (instaborder == 1)
{
    x = global.idealborder[0]
    y = global.idealborder[2]
    image_xscale = ((global.idealborder[1] - global.idealborder[0]) / 5)
}
