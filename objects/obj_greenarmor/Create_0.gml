if instance_exists(obj_bara02)
{
    g = obj_bara02.armor
    r = (255 - obj_bara02.armor)
}
else if instance_exists(obj_bara03)
{
    g = obj_bara03.armor
    r = (255 - obj_bara03.armor)
}
b = 0
image_blend = make_color_rgb(r, g, b)
siner = 0
inv = 0
