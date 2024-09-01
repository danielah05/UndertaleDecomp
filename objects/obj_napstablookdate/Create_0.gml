if (FL_TruePacifist == false && scr_murderlv() < MurderLevel.Lv10GladDummyKilled)
{
    nap = instance_create(210, 70, obj_napstablook_actor)
    image_xscale = 4
    if (FL_NapstablookDateStatus > 0)
        y = 20
    con = 0
    wavein = 0
}
else
{
    instance_destroy()
    return;
}
