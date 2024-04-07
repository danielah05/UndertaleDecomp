if (y > obj_dborder.y)
    instance_destroy()
if (green == 1)
{
    if instance_exists(kid)
    {
        kid.x = (x - 18)
        pop = scr_monstersum()
        if (pop > 1)
            kid.x = (x - 28)
        kid.y = (y - 8)
    }
}
