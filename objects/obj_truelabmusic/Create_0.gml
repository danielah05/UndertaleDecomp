event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
    if (room == room_truelab_hall1 || room == room_truelab_prepower)
    {
        global.currentsong = caster_load("music/drone.ogg")
        caster_loop(global.currentsong, 0.3, 0.5)
        return;
    }
    else
    {
        global.currentsong = caster_load("music/hereweare.ogg")
        caster_loop(global.currentsong, 0.9, 1)
    }
}
