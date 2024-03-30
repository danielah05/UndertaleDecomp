hnum = (ceil(((obj_rborder.x - obj_lborder.x) / 22)) - 1)
if (odd == 1)
{
    a = instance_create((obj_heart.x - 12), 0, obj_knighthammer)
    a.side = 0
    odd = 0
}
else
{
    gg = (floor(random(hnum)) * 22)
    a = instance_create((global.idealborder[0] + gg), 0, obj_knighthammer)
    a.side = 0
    odd = 1
}
gg = (floor(random(hnum)) * 22)
b = instance_create((global.idealborder[0] + gg), 0, obj_knighthammer)
b.side = 1
gg = (floor(random(hnum)) * 22)
c = instance_create((global.idealborder[0] + gg), 0, obj_knighthammer)
c.side = 1
if (c.x == b.x)
    b.x += 22
gg = (floor(random(hnum)) * 22)
d = instance_create((global.idealborder[0] + gg), 0, obj_knighthammer)
if (d.x == b.x || d.x == c.x)
    d.x += 22
d.side = 0
gg = (floor(random(hnum)) * 22)
e = instance_create((global.idealborder[0] + gg), 0, obj_knighthammer)
if (e.x == b.x || e.x == c.x || e.x == d.x)
    e.x += 22
e.side = 1
alarm[0] = 33
