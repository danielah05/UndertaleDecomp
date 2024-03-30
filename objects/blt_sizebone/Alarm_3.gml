if (vol > 0.01)
{
    caster_set_volume(global.batmusic, vol)
    vol -= 0.01
    alarm[3] = 1
}
else
    caster_free(global.batmusic)
