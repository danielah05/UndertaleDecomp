if (falling != 5)
{
    obj_readable_room2.read = 0
    snd_play(snd_dumbvictory)
    iceflag = instance_create(obj_golfhole.x, (obj_golfhole.y - 30), obj_iceflag)
    iceflag.y += 40
    if (rolltime > 180)
        iceflag.image_index = 1
    if (rolltime > 240)
        iceflag.image_index = 2
    if (rolltime > 330)
        iceflag.image_index = 3
    if (rolltime > 450)
        iceflag.image_index = 4
    if (rolltime > 600)
        iceflag.image_index = 5
    if (size < 0.6)
        iceflag.image_index = 6
    falling = 5
}
friction = 1
if (size > 0.3)
    size -= 0.1
