if (mercymod > 100)
    global.goldreward[3] += 20
if instance_exists(mypart1)
{
    with (mypart1)
        instance_destroy()
}
scr_monsterdefeat(0, 0, 0, 0, 0)
