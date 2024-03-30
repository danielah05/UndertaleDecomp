if (active == true)
{
    if (caster_get_volume(global.currentsong) > idealvolume[0])
    {
        curvol1 -= 0.05
        if (curvol1 < idealvolume[0])
            curvol1 = idealvolume[0]
        caster_set_volume(global.currentsong, curvol1)
    }
    if (caster_get_volume(global.currentsong) < idealvolume[0])
    {
        curvol1 += 0.05
        if (curvol1 > idealvolume[0])
            curvol1 = idealvolume[0]
        caster_set_volume(global.currentsong, curvol1)
    }
    if (caster_get_volume(global.currentsong2) > idealvolume[1])
    {
        curvol2 -= 0.05
        if (curvol2 < idealvolume[1])
            curvol2 = idealvolume[1]
        caster_set_volume(global.currentsong2, curvol2)
    }
    if (caster_get_volume(global.currentsong2) < idealvolume[1])
    {
        curvol2 += 0.05
        if (curvol2 > idealvolume[1])
            curvol2 = idealvolume[1]
        caster_set_volume(global.currentsong2, curvol2)
    }
}
