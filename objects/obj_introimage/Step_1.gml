if (act == 1)
{
    if (instance_exists(OBJ_WRITER) == false && skip == false)
    {
        skip = true
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        alarm[1] = 30
    }
    if (skip == true)
    {
        vol -= 0.05
        caster_set_volume(intromusic, vol)
    }
    if (global.faceemotion == 2 && dongs == 0)
    {
        dongs = 1
        instance_create(x, y, obj_introlast)
    }
}
