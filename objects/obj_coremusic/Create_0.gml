FL_InBattle = true
event_user(0)
if (caster_is_playing(global.currentsong) != 1)
{
    FL_InBattle = true
    if (FL_HotlandGenocide == 0)
    {
        global.currentsong = caster_load("music/core.ogg")
        caster_loop(global.currentsong, 0.85, 1)
        if (scr_murderlv() >= 12 && FL_SparedSpecific == 0)
            caster_set_pitch(global.currentsong, 0.5)
    }
    else if (FL_SparedSpecific == 0)
    {
        global.currentsong = caster_load("music/toomuch.ogg")
        caster_loop(global.currentsong, 1, 1)
    }
    else
    {
        global.currentsong = caster_load("music/core.ogg")
        caster_loop(global.currentsong, 0.85, 1)
    }
}
