for (i = 0; i < 4; i += 1)
{
    sug = instance_create(x, y, obj_sugarbullet_drop)
    sug.image_index = i
    sug.image_angle = image_angle
    sug.ang = ang
}
instance_destroy()
