global.interact = 3
if (touched == false)
{
    caster_free(all)
    cym = caster_load("music/cymbal.ogg")
    caster_play(cym, 0.9, 0.95)
    instance_create(0, 0, obj_whitefader)
    alarm[2] = 180
    touched = true
    global.plot = 30
}
