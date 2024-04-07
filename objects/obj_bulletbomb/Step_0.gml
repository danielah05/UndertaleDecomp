if (shot > 0)
{
    x = nowx
    y = nowy
    image_speed = 1
    shot2 += 1
    if (shot2 >= 5)
    {
        playdo = 0
        audio_stop_sound(myloop)
        snd_play(snd_bomb)
        if (!instance_exists(obj_shaker))
            scr_shake(3, 3, 2)
        instance_create(x, y, obj_plusbomb_explosion)
        visible = false
        shot2 = -1
        shot = -1
    }
}
