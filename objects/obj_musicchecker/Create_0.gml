if (caster_is_playing(global.currentsong) != 1)
{
    global.currentsong = caster_load("music/gameover.ogg")
    caster_loop(global.currentsong, 0.5, 1)
}
