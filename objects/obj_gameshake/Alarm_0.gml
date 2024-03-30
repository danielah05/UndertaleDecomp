gameshake *= -0.8
gameshake = floor(gameshake)
if (global.osflavor == OSFlavors.PC)
    window_set_position((wx + gameshake), wy)
alarm[0] = 8
if (abs(gameshake) < 3)
{
    if (global.osflavor <= OSFlavors.Mac)
        game_end()
    else
    {
        audio_stop_all()
        background_visible_set(3, false)
        in_silence = 1
        alarm[0] = -1
        alarm[11] = 750
        if (os_type == os_psvita)
            alarm[11] = 600
    }
}
