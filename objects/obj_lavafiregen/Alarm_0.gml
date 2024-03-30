alarm[0] = rate
g = instance_create((global.idealborder[0] - 40), global.idealborder[3], obj_sidelava)
if instance_exists(g)
    g.dmg = dmg
g = instance_create((global.idealborder[1] - 10), global.idealborder[3], obj_sidelava)
if instance_exists(g)
    g.dmg = dmg
lavatime += 1
if (lavatime == 2)
{
    g = instance_create((global.idealborder[0] + 10), ((((global.idealborder[2] + global.idealborder[3]) / 2) + 60) - random(120)), obj_lavabullet)
    if instance_exists(g)
        g.dmg = dmg
}
if (lavatime == 4)
{
    g = instance_create((global.idealborder[1] - 10), ((((global.idealborder[2] + global.idealborder[3]) / 2) + 60) - random(120)), obj_lavabullet)
    if instance_exists(g)
        g.dmg = dmg
    lavatime = 0
}
