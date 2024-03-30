event_user(0)
played = 0
if (global.plot == 121)
{
    if (caster_is_playing(global.currentsong) != 1)
    {
        global.currentsong = caster_load("music/undynetruetheme.ogg")
        caster_loop(global.currentsong, 0.9, 1)
    }
}
