g = instance_create(x, y, blt_musbul1)
alarm[0] = rate
longnote += 1
if (longnote == 12)
{
    with (obj_shyren)
        caster_play(longnote[1], 1, 1)
}
if (longnote == 24)
{
    with (obj_shyren)
        caster_play(longnote[0], 1, 1)
    longnote = 0
}
