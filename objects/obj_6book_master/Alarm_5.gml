if (CoolHell == 0)
{
    ry = 180
    rx = choose(100, 430)
    alrnum += 1
    if (alrnum < 4)
    {
        instance_create(rx, ry, obj_6book_wordbullet)
        alarm[5] = (55 + random(10))
        event_user(1)
    }
    else if (instance_exists(obj_6book_act) == false)
    {
        CoolHell = 1
        act = instance_create(rx, ry, obj_6book_act)
        with (act)
        {
            y += ((sprite_height / 2) + 10)
            x += (sprite_width / 2)
        }
        alarm[5] = -1
    }
}
