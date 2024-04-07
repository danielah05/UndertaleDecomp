event_user(0)
if (FL_TruePacifist == true)
{
    instance_destroy()
    return;
}
played = 0
ok = 0
if (room == room_water_statue || room == room_water_prewaterfall || room == room_water_waterfall || room == room_water_waterfall2 || room == room_water_waterfall3 || room == room_water_waterfall4 || room == room_water_preundyne)
    ok = 1
if (FL_PlayRainSound == false && ok == 1)
{
    FL_RainSoundVolume = 0.5
    FL_RainDeepVolume = 0
    if (room == room_water_statue || room == room_water_preundyne)
    {
        FL_RainSoundVolume = 0
        FL_RainDeepVolume = 0.5
    }
    FL_RainSoundHandle = caster_load("music/rain.ogg")
    FL_RainDeepSoundHandle = caster_load("music/rain_deep.ogg")
    global.currentsong = -999
    caster_loop(FL_RainSoundHandle, FL_RainSoundVolume, 0.9)
    caster_loop(FL_RainDeepSoundHandle, FL_RainDeepVolume, 0.9)
    FL_PlayRainSound = true
}
