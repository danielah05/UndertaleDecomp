if (type == 0)
    vvv = 3
if (type == 1)
    vvv = 4.5
if (type == 2)
    vvv = 5
scr_hplat(350, 0, 0, (8 + choose(5, 10)))
bone.vspeed = vvv
bone.x = ((global.idealborder[0] + 40) + random(((global.idealborder[1] - global.idealborder[0]) - 80)))
alarm[3] = 15
if (type == 2)
    alarm[3] = 12
bone.z_b = choose(1, 2, 3, 4, 5)
bone.z_a = choose(0.12, 0.08, 0.1)
if (non == 0)
{
    bone.z_b = 0
    bone.len = 60
    non = 1
}
