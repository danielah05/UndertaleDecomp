side = choose(0, 1)
if (side == 0)
{
    y = ((global.idealborder[2] - sprite_height) - 5)
    vspeed = (9 + random(0.5))
}
if (side == 1)
{
    vspeed = (-9 - random(0.5))
    y = (global.idealborder[3] + 5)
}
hspeed = (random(0.5) * choose(1, -1))
