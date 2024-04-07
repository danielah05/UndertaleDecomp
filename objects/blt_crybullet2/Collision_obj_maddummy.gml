snd_play(snd_damage)
with (obj_maddummy)
    event_user(3)
if (obj_maddum_drawer.alarm[5] < 2)
{
    with (obj_maddum_drawer)
        event_user(2)
}
instance_destroy()
