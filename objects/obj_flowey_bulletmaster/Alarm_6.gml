if (global.battlephase == 6)
{
    unhinged = 1
    maxtimer = 9999999
    with (obj_flowey_master)
    {
        megadamage = 1
        mustype = 5
        caster_loop(mus_finale3, 1, 1)
    }
    alarm[7] = 900
    with (obj_floweybodyparent)
    {
        desperate = 1
        wimpy = 0
    }
}
