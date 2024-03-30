with (obj_floweybodyparent)
    event_user(5)
with (obj_vsflowey_heart)
    event_user(5)
with (obj_gigavine_preview)
    event_user(5)
with (obj_gigavine)
    event_user(5)
with (obj_eyeshot_a)
    event_user(5)
with (obj_vsflowey_heart)
    event_user(5)
global.my_hp = save_hp
global.my_inv = save_inv
savetimer = -1
loadtimer = 20
fileset = 2
if (mustype == 3)
{
    mused = 0
    if (caster_is_playing(mus_repeat1) && mused == 0)
    {
        mused = 1
        caster_stop(mus_repeat1)
        caster_loop(mus_repeat2, 1, 1)
    }
    if (caster_is_playing(mus_repeat2) && mused == 0)
    {
        mused = 1
        caster_stop(mus_repeat2)
        caster_loop(mus_repeat1, 1, 1)
    }
}
