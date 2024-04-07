event_user(0)
if (FL_TruePacifist == true)
{
    instance_destroy()
    return;
}
played = 0
if (caster_is_playing(global.currentsong) != 1 && FL_CurrentNapstablookSong == 0)
{
    if (FL_WaterfallGenocide == 0)
    {
        global.currentsong = caster_load("music/waterquiet.ogg")
        caster_loop(global.currentsong, 0.8, 0.9)
        if (scr_murderlv() >= 8 && FL_SparedSpecific == 0)
            caster_set_pitch(global.currentsong, 0.5)
    }
    else if (FL_SparedSpecific == 0)
    {
        global.currentsong = caster_load("music/toomuch.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
    else
    {
        global.currentsong = caster_load("music/waterquiet.ogg")
        caster_loop(global.currentsong, 0.8, 0.9)
    }
}
