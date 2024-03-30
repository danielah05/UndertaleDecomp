if (killed == 0)
{
    FL_SoSorryStatus = SoSorryStatus.Killed
    global.goldreward[3] += 100
    x += 19
    y -= 24
}
else
    FL_SoSorryStatus = SoSorryStatus.Spared
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
