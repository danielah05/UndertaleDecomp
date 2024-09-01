event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
    if (room == room_fire_core_metttest)
    {
        global.currentsong = caster_load("music/drone.ogg")
        caster_loop(global.currentsong, 0.5, 0.5)
        return;
    }
    if (global.plot > 125 && FL_DatedAlphys < 11)
    {
        if (scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
        {
            global.currentsong = caster_load("music/lab.ogg")
            caster_loop(global.currentsong, 1, 1)
        }
        else
        {
            global.currentsong = caster_load("music/drone.ogg")
            caster_loop(global.currentsong, 0.5, 0.5)
        }
    }
    else
    {
        global.currentsong = caster_load("music/drone.ogg")
        caster_loop(global.currentsong, 0.5, 0.5)
    }
}
