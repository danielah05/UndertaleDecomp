if (global.plot < 64 && t == 0)
{
    t = 1
    global.interact = 1
    alarm[4] = 20
    fader = instance_create(0, 0, obj_musfadeout)
    fader.fadespeed = 0.01
}
