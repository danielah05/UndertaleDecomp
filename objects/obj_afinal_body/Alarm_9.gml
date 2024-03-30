caster_stop(psfx)
caster_play(psfx, (0.6 + (ps / 8)), (0.5 + (ps / 6)))
ps += 1
if (ps < 6)
    alarm[9] = 5
