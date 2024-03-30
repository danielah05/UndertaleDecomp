if (FL_TruePacifist == true)
{
    instance_destroy()
    return;
}
if (instance_number(object_index) < 2)
{
    spoopy = caster_load("music/spoopy.ogg")
    spoopywave = caster_load("music/spoopy_wave.ogg")
    spoopyholiday = caster_load("music/spoopy_holiday.ogg")
    napstachords = caster_load("music/napstachords.ogg")
}
else
    instance_destroy()
songplaying = NapstablookSong.None
fadeout = 0
curvol = 0
con = 0
