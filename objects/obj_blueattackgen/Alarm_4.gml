if (obj_heart.y > (global.idealborder[3] - 60))
{
    if (obj_heart.x > ((global.idealborder[0] + global.idealborder[1]) / 2))
    {
        bon = instance_create((global.idealborder[1] + 10), (global.idealborder[3] - 20), blt_sizebone)
        bon.hspeed = -6
    }
    else
    {
        bon = instance_create((global.idealborder[0] - 10), (global.idealborder[3] - 20), blt_sizebone)
        bon.hspeed = 6
    }
    alarm[5] = 2
}
else
    alarm[4] = 2
