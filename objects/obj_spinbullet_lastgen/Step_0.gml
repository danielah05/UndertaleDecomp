if (frame == 0)
{
    with (obj_asgore_lastcutscene)
        specbullet = instance_create(obj_spinbullet_lastgen.x, obj_spinbullet_lastgen.y, obj_spinbullet_last)
}
if (frame > 0)
    instance_create(x, y, obj_spinbullet_last)
frame += 1
direction -= 10
snd_play(snd_chug)
