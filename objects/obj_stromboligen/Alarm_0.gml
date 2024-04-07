wall_l = global.idealborder[0]
wall_r = global.idealborder[1]
wall_d = global.idealborder[3]
wall_u = global.idealborder[2]
vside = choose(0, 1)
hside = choose(0, 1)
peepee = instance_create(x, y, obj_stromboli)
if instance_exists(peepee)
{
    if (vside == 0)
    {
        peepee.y = (wall_u - 60)
        peepee.vspeed = spd
    }
    if (vside == 1)
    {
        peepee.y = (wall_d + 40)
        peepee.vspeed = (-spd)
    }
    if (hside == 0)
    {
        peepee.x = (wall_l - 40)
        peepee.hspeed = spd
    }
    if (hside == 1)
    {
        peepee.x = (wall_r + 40)
        peepee.hspeed = (-spd)
    }
    if (hside == 1)
        peepee.x += (random(((wall_r - wall_l) - 20)) - 100)
    if (hside == 0)
        peepee.x -= (random(((wall_r - wall_l) - 20)) - 100)
    peepee.friction = -0.05
    peepee.dmg = dmg
}
alarm[0] = rate
