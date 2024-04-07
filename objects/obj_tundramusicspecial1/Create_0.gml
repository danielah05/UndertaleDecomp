event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
    if (global.plot <= 35)
    {
        global.currentsong = caster_load("music/tone2.ogg")
        caster_loop(global.currentsong, 0.2, 1)
        instance_create(0, 0, obj_musfadein)
        alarm[0] = 5
    }
    if (global.plot > 35)
    {
        global.currentsong = caster_load("music/snowy.ogg")
        caster_loop(global.currentsong, 1, 0.95)
    }
}
if (global.plot <= 35)
{
    alarm[0] = 5
    global.currentsong2 = caster_load("music/tone3.ogg")
}
