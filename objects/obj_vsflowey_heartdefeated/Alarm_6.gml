if (global.osflavor <= OSFlavors.Mac)
    game_end()
else
{
    caster_stop(all)
    snd_audio_gain_ext(snd_play_ext(snd_gameover_broken, 666, true), 0.6, 0)
    scr_fakecrash_init()
    in_fakecrash = 1
}
