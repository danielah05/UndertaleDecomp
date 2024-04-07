if (off == 0)
{
    gravity = 0.1
    gravity_direction = 0
}
if (off == 1)
{
    gravity = 0.1
    gravity_direction = 180
}
if (off == 2)
{
    gravity = 0.1
    gravity_direction = (60 + random(60))
    pop = scr_monstersum()
    if (pop > 1)
        instance_destroy()
}
