event_user(0)
if (FL_TruePacifist == false)
{
    caster_free(global.currentsong)
    global.currentsong = caster_load("music/intronoise.ogg")
    caster_loop(global.currentsong, 0.4, 0.3)
}
