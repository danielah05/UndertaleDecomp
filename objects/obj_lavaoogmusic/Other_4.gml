event_user(0)
ok = 1
if (caster_is_playing(global.currentsong) == 1)
    ok = 0
if instance_exists(obj_undynea_chaser)
    ok = 0
if instance_exists(obj_undynetrigger_dry)
    ok = 0
if (ok == 1)
{
    played = 0
    if (caster_is_playing(global.currentsong) != 1)
    {
        if (FL_HotlandGenocide == 0)
        {
            global.currentsong = caster_load("music/oogloop.ogg")
            caster_loop(global.currentsong, 0.7, 0.9)
            if (scr_murderlv() >= MurderLevel.Lv12UndyneEXKilled && FL_SparedSpecific == 0)
                caster_set_pitch(global.currentsong, 0.5)
        }
        else if (FL_SparedSpecific == 0)
        {
            global.currentsong = caster_load("music/toomuch.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
        else
        {
            global.currentsong = caster_load("music/oogloop.ogg")
            caster_loop(global.currentsong, 0.7, 0.9)
        }
    }
}
