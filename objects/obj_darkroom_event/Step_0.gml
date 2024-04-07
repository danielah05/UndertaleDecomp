if instance_exists(obj_mainchara)
{
    if (obj_mainchara.x < 440 || obj_mainchara.x > 460)
    {
        if (obj_mainchara.y > 526)
            obj_mainchara.y = 526
    }
    if (obj_mainchara.x > 170 && obj_mainchara.y > 130 && obj_mainchara.x < (room_width - 170) && obj_mainchara.y < (room_height - 160) && lock == 0)
    {
        tone = caster_load("music/creepy_ambience.ogg")
        tone1 = caster_loop(mus_creepy_ambience, 0, 1.1)
        tone2 = caster_loop(mus_creepy_ambience, 0, 1)
        tone3 = caster_loop(mus_creepy_ambience, 0, 0.9)
        tonevol = 0
        lock = 1
    }
    else
    {
        if (obj_mainchara.x < 180)
            obj_mainchara.x = 180
        if (obj_mainchara.x > (room_width - 180))
            obj_mainchara.x = (room_width - 180)
        if (obj_mainchara.y < 170)
            obj_mainchara.y = 170
    }
    if (lock == 1)
    {
        if (locktime >= 250)
        {
            tonevol = ((locktime - 250) / 250)
            caster_set_volume(mus_creepy_ambience, tonevol)
        }
        obj_mainchara.x = (room_width / 2)
        obj_mainchara.y = (room_height / 2)
        if (obj_mainchara.moving == true)
            locktime += 1
        if (locktime >= 550)
        {
            caster_free(tone)
            snd_play(snd_noise)
            obj_mainchara.visible = false
            global.interact = 1
            alarm[4] = 90
            lock = 2
        }
    }
}
