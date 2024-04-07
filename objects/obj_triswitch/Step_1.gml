if (myinteract == 1 && on == 0 && instance_exists(obj_triswitchevent))
{
    con = 1
    on = 1
    myinteract = 2
    snd_play(snd_noise)
    sprite_index = spr_onoffswitch_on
    alarm[3] = 90
}
if (on == 1 && instance_exists(obj_triswitchevent))
    obj_triswitchevent.switches += 1
