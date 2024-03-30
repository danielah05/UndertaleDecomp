if (songplaying == NapstablookSong.Napstachords)
{
    fadeout = 1
    curvol = 1
}
if (songplaying != NapstablookSong.Napstachords && fadeout == 0)
{
    songplaying = NapstablookSong.Napstachords
    curvol = 0
    fadeout = 2
    if (caster_is_playing(napstachords) == false)
        caster_loop(napstachords, 0, 0.4)
}
