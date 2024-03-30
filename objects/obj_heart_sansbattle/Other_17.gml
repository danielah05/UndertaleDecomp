if (speed > 10)
{
    s_s = instance_create(0, 0, obj_sans_shaker)
    s_s.intensity = floor((speed / 3))
}
