image_blend = make_color_rgb(r, g, b)
y += (sin((siner / 20)) * 2)
x += (cos((siner / 10)) * 6)
siner += 1
if (global.turntimer < 3)
{
    if instance_exists(obj_bara02)
        obj_bara02.armor = g
    if instance_exists(obj_bara03)
        obj_bara03.armor = g
    if (r > 99)
    {
        global.mnfight = 5
        global.border = 0
    }
    instance_destroy()
}
inv -= 1
