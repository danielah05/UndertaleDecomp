dmg = 7
if (obj_shyren.emotion > 0)
{
    caster_pause(global.batmusic)
    with (obj_shyren)
        caster_play(longnote[0], 1, 1)
}
rate = global.firingrate
alarm[0] = rate
longnote = 0
offset = 0
