event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
    global.currentsong = caster_load("music/mystery.ogg")
    caster_loop(global.currentsong, 0.8, 0.95)
}
