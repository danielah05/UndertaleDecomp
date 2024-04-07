side = floor(random(3))
if (side == oldside)
    side += 1
if (side >= 3)
    side = 0
oldside = side
cshot = instance_create((276 + (side * 30)), global.idealborder[2], obj_stardrop)
cshot.dmg = dmg
if (shake == 1)
{
    cshot.shake = 1
    cshot.alarm[0] = 2
}
alarm[1] = (rate / 2)
if (mode == 1)
{
    cshot2 = instance_create((336 - (side * 30)), global.idealborder[3], obj_stardrop)
    cshot2.gravity = (-cshot.gravity)
    cshot2.hspeed = (-cshot.hspeed)
    cshot2.dmg = dmg
    alarm[1] = rate
}
