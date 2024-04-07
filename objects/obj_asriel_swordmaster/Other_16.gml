if (freakcon == 0)
{
    caster_play(sfx_jafe, 1.2, 1)
    caster_play(sfx_cut, 0.7, 1.4)
}
else if (last == 0)
{
    caster_play(sfx_cut, 0.9, 1)
    caster_play(sfx_spk, 0.7, 1)
}
else
    last = 1
