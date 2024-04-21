if (global.osflavor <= OSFlavors.Mac)
    game_end()
else
{
    caster_stop(all)
    audio_sound_gain(audio_play_sound(snd_gameover_broken, 666, true), 0.6, 0)
    scr_fakecrash_init()
    in_fakecrash = 1
}
