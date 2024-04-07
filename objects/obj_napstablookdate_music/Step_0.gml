if (fadeout == 1)
{
    curvol -= 0.02
    if (songplaying == NapstablookSong.Napstachords)
        curvol += 0.015
    if (curvol <= 0)
        curvol = 0
    if (songplaying == NapstablookSong.GlobalSong)
        caster_set_volume(global.currentsong, curvol)
    if (songplaying == NapstablookSong.Napstachords)
        caster_set_volume(napstachords, curvol)
    if (songplaying == NapstablookSong.Spoopy)
        caster_set_volume(spoopy, curvol)
    if (songplaying == NapstablookSong.SpoopyWave)
        caster_set_volume(spoopywave, curvol)
    if (songplaying == NapstablookSong.SpoopyHoliday)
        caster_set_volume(spoopyholiday, curvol)
    if (curvol == 0)
    {
        if (songplaying == NapstablookSong.GlobalSong)
            caster_stop(global.currentsong)
        if (songplaying == NapstablookSong.Napstachords)
            caster_stop(napstachords)
        if (songplaying == NapstablookSong.Spoopy)
            caster_stop(spoopy)
        if (songplaying == NapstablookSong.SpoopyWave)
            caster_stop(spoopywave)
        if (songplaying == NapstablookSong.SpoopyHoliday)
            caster_stop(spoopyholiday)
        songplaying = NapstablookSong.None;
        fadeout = 0
    }
}
if (fadeout == 2)
{
    curvol += 0.02
    if (songplaying == NapstablookSong.Napstachords)
        curvol -= 0.015
    if (curvol >= 1)
        curvol = 1
    if (songplaying == NapstablookSong.GlobalSong)
        caster_set_volume(global.currentsong, curvol)
    if (songplaying == NapstablookSong.Napstachords)
        caster_set_volume(napstachords, curvol)
    if (songplaying == NapstablookSong.Spoopy)
        caster_set_volume(spoopy, curvol)
    if (songplaying == NapstablookSong.SpoopyWave)
        caster_set_volume(spoopywave, curvol)
    if (songplaying == NapstablookSong.SpoopyHoliday)
        caster_set_volume(spoopyholiday, curvol)
    if (curvol == 1)
        fadeout = 0
}
if (con == 1)
{
    FL_CurrentNapstablookSong = NapstablookSong.GlobalSong
    if (songplaying == NapstablookSong.GlobalSong)
        caster_stop(global.currentsong)
    if (songplaying == NapstablookSong.Napstachords)
        caster_stop(napstachords)
    if (songplaying == NapstablookSong.Spoopy)
        caster_stop(spoopy)
    if (songplaying == NapstablookSong.SpoopyWave)
        caster_stop(spoopywave)
    if (songplaying == NapstablookSong.SpoopyHoliday)
        caster_stop(spoopyholiday)
    caster_loop(spoopy, 1, 1)
    songplaying = NapstablookSong.Spoopy
    curvol = 1
    con = 0
}
if (con == 2)
{
    FL_CurrentNapstablookSong = NapstablookSong.None
    if (songplaying == NapstablookSong.GlobalSong)
        caster_stop(global.currentsong)
    if (songplaying == NapstablookSong.Napstachords)
        caster_stop(napstachords)
    if (songplaying == NapstablookSong.Spoopy)
        caster_stop(spoopy)
    if (songplaying == NapstablookSong.SpoopyWave)
        caster_stop(spoopywave)
    if (songplaying == NapstablookSong.SpoopyHoliday)
        caster_stop(spoopyholiday)
    caster_loop(global.currentsong, 1, 1)
    songplaying = NapstablookSong.GlobalSong
    curvol = 1
    con = 0
}
if (con == 3)
{
    FL_CurrentNapstablookSong = NapstablookSong.Napstachords
    if (songplaying == NapstablookSong.GlobalSong)
        caster_stop(global.currentsong)
    if (songplaying == NapstablookSong.Napstachords)
        caster_stop(napstachords)
    if (songplaying == NapstablookSong.Spoopy)
        caster_stop(spoopy)
    if (songplaying == NapstablookSong.SpoopyWave)
        caster_stop(spoopywave)
    if (songplaying == NapstablookSong.SpoopyHoliday)
        caster_stop(spoopyholiday)
    caster_loop(spoopywave, 1, 1)
    songplaying = NapstablookSong.SpoopyWave;
    curvol = 1
    con = 0
}
if (con == 4)
{
    FL_CurrentNapstablookSong = NapstablookSong.Spoopy
    if (songplaying == NapstablookSong.GlobalSong)
        caster_stop(global.currentsong)
    if (songplaying == NapstablookSong.Napstachords)
        caster_stop(napstachords)
    if (songplaying == NapstablookSong.Spoopy)
        caster_stop(spoopy)
    if (songplaying == NapstablookSong.SpoopyWave)
        caster_stop(spoopywave)
    if (songplaying == NapstablookSong.SpoopyHoliday)
        caster_stop(spoopyholiday)
    caster_loop(spoopyholiday, 1, 1)
    songplaying = NapstablookSong.SpoopyHoliday
    curvol = 1
    con = 0
}
