event_user(0)
if (FL_TorielStatus != TorielStatus.Killed)
{
    if (caster_is_playing(global.currentsong) != 1)
    {
        global.currentsong = caster_load("music/house1.ogg")
        global.currentsong2 = caster_load("music/house2.ogg")
        caster_loop(global.currentsong, 1, 1)
        caster_loop(global.currentsong2, 0.01, 1)
    }
}
else if (caster_is_playing(global.currentsong) != 1)
{
    global.currentsong = caster_load("music/toriel.ogg")
    global.currentsong2 = caster_load("music/toriel.ogg")
    caster_loop(global.currentsong, 1, 0.4)
    caster_loop(global.currentsong2, 0.01, 0.4)
}
