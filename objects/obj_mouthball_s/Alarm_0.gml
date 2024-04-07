mb = instance_create(x, y, obj_mouthball_s)
mb.num = (num - 1)
mb.parent = id
mb.size = (size - 0.1)
mb.siner = (siner + 1)
if (mb.num > 0)
{
    with (mb)
        alarm[0] = 1
}
