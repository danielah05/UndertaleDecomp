siner = 0
FL_InBattle = false
event_user(0)
if (FL_TruePacifist == true)
    return;
if (caster_is_playing(global.currentsong) != 1)
{
    global.currentsong = mus_coretransition
    caster_loop(global.currentsong, 1, 1)
}
