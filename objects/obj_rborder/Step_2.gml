if (x != global.idealborder[1])
{
    if (abs((x - global.idealborder[1])) <= 15)
        x = global.idealborder[1]
    else if (x > global.idealborder[1])
        x -= 15
    else
        x += 15
}
if (y != global.idealborder[3])
{
    if (abs((y - global.idealborder[3])) <= 15)
        y = global.idealborder[3]
    else if (y > global.idealborder[3])
        y -= 15
    else
        y += 15
}
size = ceil(((global.idealborder[2] - global.idealborder[3]) / 5))
if (x == global.idealborder[1] || global.idealborder[2] > (y + (image_yscale * 5)))
{
    if (image_yscale != size)
    {
        if (abs((size - image_yscale)) <= 3)
            image_yscale = size
        if (image_yscale > size)
            image_yscale -= 3
        if (image_yscale < size)
            image_yscale += 3
    }
}
y = obj_dborder.y
image_yscale = ((obj_uborder.y - obj_dborder.y) / 5)
if (instaborder == 1)
{
    x = global.idealborder[1]
    y = global.idealborder[3]
    image_yscale = ((global.idealborder[2] - global.idealborder[3]) / 5)
}
