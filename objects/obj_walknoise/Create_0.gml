mynoise = caster_load("music/snowwalk.ogg")
if (global.plot <= 35)
{
    caster_loop(mynoise, 1, 0.8)
    caster_set_panning(mynoise, -1)
}
