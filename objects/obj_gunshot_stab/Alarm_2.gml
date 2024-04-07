visible = false
for (i = 0; i < 8; i += 1)
{
    g = instance_create(x, y, obj_gunshot_star)
    g.image_angle = (20 * i)
    g.siner = (45 * i)
    g.image_blend = image_blend
}
g2 = instance_create(x, y, obj_gunshot_2)
g2.image_blend = image_blend
shotno += 1
alarm[4] = 3
