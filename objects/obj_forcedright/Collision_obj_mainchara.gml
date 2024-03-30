if (global.plot < 50 && t == 0)
{
    if instance_exists(obj_encountererparent)
    {
        with (obj_encountererparent)
            steps += 200
        global.encounter = 0
    }
    t = 1
    global.interact = 1
    obj_mainchara.hspeed = 3
    obj_mainchara.image_speed = 0.25
    alarm[0] = 30
    vol = caster_get_volume(global.currentsong)
    vol1 = vol
}
