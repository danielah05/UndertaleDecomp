vol -= 0.05
caster_set_volume(global.batmusic, (basevol * vol))
if (vol < 0.06)
    caster_free(global.batmusic)
else
    alarm[3] = 2
