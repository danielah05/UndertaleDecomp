speed = 3.5
visible = false
gg = (instance_number(object_index) % 4)
if (gg < 2)
{
    x = (obj_lborder.x + random(c_borderwidth(0)))
    y = (global.idealborder[2] - 40)
    direction = 270
}
if (gg == 2)
{
    x = (global.idealborder[0] - 16)
    y = ((global.idealborder[2] - 40) + (random(123) * 1.5))
    if (gg == 2)
        direction = 310
}
if (gg == 3)
{
    x = (global.idealborder[1] + 16)
    y = ((global.idealborder[2] - 40) + (random(123) * 1.5))
    if (gg == 3)
        direction = 235
}
image_alpha = 0
visible = true
dmg = 8
