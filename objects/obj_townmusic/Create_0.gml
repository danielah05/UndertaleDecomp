event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
    if (FL_TundraGenocide == 0)
    {
        global.currentsong = caster_load("music/town.ogg")
        caster_loop(global.currentsong, 1, 1)
        if (scr_murderlv() >= 7 && FL_SparedSpecific == 0)
            caster_set_pitch(global.currentsong, 0.25)
    }
    else if (FL_SparedSpecific == 0)
    {
        global.currentsong = caster_load("music/toomuch.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
    else
    {
        global.currentsong = caster_load("music/town.ogg")
        caster_loop(global.currentsong, 1, 0.5)
    }
}
