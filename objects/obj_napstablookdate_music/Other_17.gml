if (songplaying == NapstablookSong.GlobalSong)
{
    fadeout = 1
    curvol = 1
}
if (songplaying != NapstablookSong.GlobalSong)
{
    songplaying = NapstablookSong.GlobalSong
    curvol = 0.5
    fadeout = 2
    caster_loop(global.currentsong, 0.5, 1)
}
