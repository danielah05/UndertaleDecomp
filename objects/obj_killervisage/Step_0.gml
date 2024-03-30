if (active == true)
{
    image_alpha += 0.02
    sparklefactor += 1
    j = instance_create((x + random(sprite_width)), ((y - 20) + random((sprite_height / 2))), obj_chimesparkle)
    j.maxalpha = image_alpha
    if (image_alpha > 1)
        image_alpha = 1
    if (sparklefactor > 110)
        active = 2
}
if (active == 2)
{
    image_alpha -= 0.02
    if (image_alpha < 0.04)
        instance_destroy()
}
