maxtime = 5
if (h_mode > 0)
    maxtime = 6
if (times < maxtime)
{
    which = choose(0, 1)
    if (which == lastwhichwhich && which == lastwhich)
    {
        if (which == 0)
            which = 1
        else
            which = 0
    }
    if (h_mode == 0)
    {
        if (which == 0)
            sword_a.timer = 106
        if (which == 1)
            sword_b.timer = 106
    }
    if (h_mode == 1)
    {
        if (which == 0)
            sword_a.timer = 109
        if (which == 1)
            sword_b.timer = 109
    }
    if (h_mode == 2)
    {
        if (which == 0)
            sword_a.timer = 112
        if (which == 1)
            sword_b.timer = 112
    }
    sword_a.h_mode = h_mode
    sword_b.h_mode = h_mode
    lastwhichwhich = lastwhich
    lastwhich = which
    alarm[5] = 27
    if (h_mode == 1)
        alarm[5] = 24
    if (h_mode == 2)
        alarm[5] = 21
}
else
{
    sword_a.timer = 89
    sword_b.timer = 89
    obj_asriel_swordarm.twinkle = 1
    freakcon = 1
}
times += 1
king.headrot = 0
