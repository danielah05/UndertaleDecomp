sw = instance_create(x, y, obj_asgore_spearswipe)
for (i = 0; i < (typeamt + 1); i += 1)
    sw.type[i] = type[i]
if (diff == 0)
{
    with (sw)
    {
        amt = 1
        quick = 0
        cutspeed = 0.5
        flashtimer = 12
        swipewait = 2
        initswipewait = 5
    }
}
if (diff == 1)
{
    with (sw)
    {
        amt = 2
        quick = 0
        cutspeed = 0.5
        flashtimer = 12
        swipewait = 0
        initswipewait = 8
    }
}
if (diff == 2)
{
    with (sw)
    {
        amt = 2
        quick = 0
        cutspeed = 1
        flashtimer = 7
        swipewait = 3
        initswipewait = 4
    }
}
if (diff == 3)
{
    with (sw)
    {
        amt = 3
        quick = 0
        cutspeed = 1
        flashtimer = 7
        swipewait = 3
        initswipewait = 3
    }
}
instance_destroy()
