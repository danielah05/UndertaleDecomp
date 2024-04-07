if (noarm == 1)
{
    xhau1 = instance_create(((x + 36) + sin((siner / 3.5))), (((y - legh) + 80) + (cos((siner / 3.5)) * 2)), obj_planeexhaust)
    xhau2 = instance_create(((x + 110) + sin((siner / 3.5))), (((y - legh) + 80) + (cos((siner / 3.5)) * 2)), obj_planeexhaust)
    xhau2.hspeed = (-xhau2.hspeed)
    xhau1.depth = (depth + 2)
    xhau2.depth = (depth + 2)
}
alarm[6] = 10
