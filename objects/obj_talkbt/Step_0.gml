image_index = 0
if (global.bmenucoord[0] == 1)
{
    if (global.myfight == 0)
    {
        if (global.mnfight == 0)
            image_index = 1
    }
    if (global.bmenuno == 0)
    {
        obj_heart.x = (x + 8)
        obj_heart.y = (y + 14)
    }
}
if (spec == 1)
{
    spec_x += 1 // Vultu: We need to manually wrap this function now
    image_blend = make_color_hsv(((spec_x * 12) % 255), 160, 255)
}
