gil = global.idealborder[0]
gir = global.idealborder[1]
giw = (gir - gil)
giu = global.idealborder[2]
if (t == 1)
{
    i = 0
    repeat (2)
    {
        j = 0
        repeat (4)
        {
            gg = instance_create(((((gil + (j * (giw / 4))) + 20) - random(10)) + (10 * j)), (((giu - 80) - (360 * i)) - random(90)), obj_helixfiregen)
            gg.vspeed = (random(0.25) - random(0.25))
            j += 1
        }
        i += 1
    }
}
if (t == 2)
{
    i = 0
    repeat (2)
    {
        j = 0
        repeat (4)
        {
            gg = instance_create(((((gil + (j * (giw / 4))) + 20) - random(10)) + (10 * j)), (((giu - 80) - (340 * i)) - random(90)), obj_helixfiregen)
            gg.mysf = 5.5
            gg.mysv = 3.5
            gg.mys = random(2)
            gg.vspeed = ((0 + random(2)) - random(2))
            j += 1
        }
        i += 1
    }
}
