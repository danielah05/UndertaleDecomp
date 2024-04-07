mb = instance_create(x, y, obj_mouthball_s)
mb.num = (num - 1)
mb.parent = id
mb.size = (size - 0.05)
if (mb.num > 0)
    mb.alarm[0] = 1
visible = true
