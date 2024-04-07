i += 1
cx[i] = ((global.idealborder[0] + 20) + random(121))
cy[i] = ((global.idealborder[2] + 20) + random(122))
hdist = (abs((global.idealborder[0] - cx[i])) - abs((global.idealborder[1] - cx[i])))
vdist = (abs((global.idealborder[2] - cy[i])) - abs((global.idealborder[3] - cy[i])))
if (abs(vdist) > abs(hdist))
{
    if (vdist >= 0)
        hd2 = (cy[i] - global.idealborder[2])
    else
        hd2 = (global.idealborder[3] - cy[i])
}
else if (hdist >= 0)
    hd2 = (cx[i] - global.idealborder[0])
else
    hd2 = (global.idealborder[1] - cx[i])
sum = scr_monstersum()
hd2 *= 1.5
hd1 = ((hd2 * 2) / 3)
cs = (2.4 + random(0.2))
if (sum > 1)
{
    hd2 *= 1.6
    hd1 *= 1.6
    cs *= 1.6
}
if (sum == 1)
{
    hd1 *= 1.8
    hd2 *= 1.8
    cs *= 2.2
}
b = instance_create((cx[i] - hd2), cy[i], blt_splinter)
b.direction = 0
b.iteration = i
b = instance_create((cx[i] - hd1), (cy[i] - hd1), blt_splinter)
b.direction = 315
b.iteration = i
b = instance_create(cx[i], (cy[i] - hd2), blt_splinter)
b.direction = 270
b.iteration = i
b = instance_create((cx[i] + hd1), (cy[i] - hd1), blt_splinter)
b.direction = 225
b.iteration = i
b = instance_create((cx[i] + hd2), cy[i], blt_splinter)
b.direction = 180
b.iteration = i
b = instance_create((cx[i] + hd1), (cy[i] + hd1), blt_splinter)
b.direction = 135
b.iteration = i
b = instance_create(cx[i], (cy[i] + hd2), blt_splinter)
b.direction = 90
b.iteration = i
b = instance_create((cx[i] - hd1), (cy[i] + hd1), blt_splinter)
b.direction = 45
b.iteration = i
blt_splinter.dmg = 8
blt_splinter.speed = cs
if (sum > 1)
    blt_splinter.sprite_index = spr_bulletmd
if (sum == 1)
{
    blt_splinter.image_xscale = 2
    blt_splinter.image_yscale = 2
}
if (alarm[2] < 1)
{
    a2i = i
    alarm[2] = (hd2 / cs)
}
else if (alarm[3] < 1)
{
    a3i = i
    alarm[3] = (hd2 / cs)
}
else if (alarm[4] < 1)
{
    a4i = i
    alarm[4] = (hd2 / cs)
}
if (i < 3)
    alarm[0] = rate
if (sum == 1)
{
    if (i < 4)
        alarm[0] = rate
}
