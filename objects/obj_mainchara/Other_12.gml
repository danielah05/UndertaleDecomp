if (global.interact == 0 && FL_UnknownBoolean17 == false)
{
    snd_play(snd_squeak)
    global.interact = 5
    global.menuno = 0
    control_clear(MenuButton)
}
