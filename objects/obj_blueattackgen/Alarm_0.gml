if (global.turntimer < 600)
{
    rsize = random(70)
    rr = floor(random(2))
    if (rr == 0)
    {
        bb = instance_create((global.idealborder[1] + 20), (global.idealborder[3] - (40 + rsize)), blt_sizebone)
        bb.hspeed = (-3 - random(3))
        bb.blue = 1
        bb.dmg = 1
    }
    if (rr == 1)
    {
        bb = instance_create((global.idealborder[1] + 20), (global.idealborder[2] + (40 + rsize)), blt_topbone)
        bb.hspeed = (-3 - random(3))
        bb.blue = 1
        bb.dmg = 1
    }
    alarm[0] = (5 + random(20))
}
else
    alarm[1] = 20
global.turntimer += 37
