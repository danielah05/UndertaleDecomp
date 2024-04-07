if (con == 0)
{
    con = 1
    snd_play(snd_spearappear)
    alarm[4] = 20
}
if (con == 1)
{
    tile_layer_shift(l2, 0, -1)
    tile_layer_shift(l2x, 0, -1)
    with (obj_mettboss_event)
    {
        obj_mainchara.y -= 1
        mett.y -= 1
        sixty.y -= 1
    }
}
if (con == 2)
{
    remay = obj_mainchara.y
    remby = obj_mettaton_actor.y
    snd_play(snd_impact)
    con = 3
    alarm[4] = 30
    blastup = -6
    bltotal = 0
    bl = 0
    ttotal = 0
    ttotal2 = 0
    cl = 0
}
if (con == 4)
{
    if (cl == 0)
    {
        snd_play(snd_spearrise)
        cl = 1
    }
    tspeed += 0.4
    if (tspeed > 22)
        tspeed = 22
    if (bl == 0)
    {
        blastup += 0.2
        bltotal += blastup
        tile_layer_shift(l2, 0, blastup)
        tile_layer_shift(l2x, 0, blastup)
        sixty.y += blastup
        obj_mainchara.y += blastup
        obj_mettaton_actor.y += blastup
        if (blastup > 0 && bltotal >= 20)
            blastup = -2
    }
    if (ttotal < 300)
    {
        ttotal += tspeed
        ttotal2 += tspeed
        tile_layer_shift(l1, 0, tspeed)
        tile_layer_shift(l3, 0, tspeed)
    }
    obj_mettboss_event.bly += tspeed
    if (ttotal > 400)
    {
        ttotal -= 400
        tile_layer_shift(l1, 0, -400)
    }
    instance_create(0, 0, obj_speedline)
}
if (con == 6)
{
    with (obj_speedline)
        instance_destroy()
    con = 7
    tile_layer_shift(l2, 0, ((-bltotal) + 20))
    tile_layer_shift(l2x, 0, ((-bltotal) + 20))
    if instance_exists(sixty)
        sixty.y += ((-bltotal) + 20)
    tile_layer_shift(l3, 0, (-ttotal2))
    tile_layer_shift(l1, 0, (-ttotal))
}
if (con == 7)
    instance_destroy()
