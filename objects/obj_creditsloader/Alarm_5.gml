if (memory == 0)
{
    if (rounded == 0)
    {
        cb = instance_create(100, choose(40), obj_creditboss)
        cb.type = choose(1)
    }
    if (rounded == 1)
    {
        cb = instance_create(100, choose(260), obj_creditboss)
        cb.type = choose(1)
    }
    if (rounded == 2)
    {
        cb = instance_create(100, choose(40), obj_creditboss)
        cb.type = choose(0)
    }
    if (rounded == 3)
    {
        cb = instance_create(100, choose(260), obj_creditboss)
        cb.type = choose(0)
    }
    alarm[5] = 35
    rounded += 1
    if (rounded == 4)
        rounded = 0
}
if (memory == 1)
{
    i = 0
    xx = (10 + (floor(random(6)) * 20))
    repeat (4)
    {
        event_user(0)
        cb.x = xx
        xx += 90
        cb.y = -40
        cb.vspeed = 0.5
        cb.gravity = 0.1
        i += 1
    }
    alarm[5] = 15
}
if (memory == 2)
{
    for (i = 0; i < 12; i += 1)
    {
        event_user(0)
        cb.x = -200
        cb.y = (10 + (i * 40))
        cb.hspeed = 9
    }
    for (i = 0; i < 12; i += 1)
    {
        event_user(0)
        cb.x = (room_width + 200)
        cb.y = (30 + (i * 40))
        cb.hspeed = -9
    }
    alarm[5] = 50
}
if (memory == 4)
{
    if (memswitch == 0)
    {
        for (i = 0; i < 12; i += 1)
        {
            event_user(0)
            cb.x = (10 + (i * 60))
            with (cb)
                width = string_width(string_hash_to_newline(text))
            cb.y = (-300 + cb.width)
            cb.image_angle = 90
            cb.hspeed = 2
            cb.action = 3
            cb.vspeed = 6
        }
        for (i = 0; i < 12; i += 1)
        {
            event_user(0)
            with (cb)
                width = string_width(string_hash_to_newline(text))
            cb.image_angle = 90
            cb.x = (40 + (i * 60))
            cb.y = (-300 - cb.width)
            cb.hspeed = -2
            cb.action = 3
            cb.vspeed = 6
        }
    }
    if (memswitch == 1)
    {
        for (i = 0; i < 12; i += 1)
        {
            event_user(0)
            cb.x = (10 + (i * 60))
            with (cb)
                width = string_width(string_hash_to_newline(text))
            cb.y = (-300 + cb.width)
            cb.image_angle = -90
            cb.hspeed = -2
            cb.action = 3
            cb.vspeed = 6
        }
        for (i = 0; i < 12; i += 1)
        {
            event_user(0)
            with (cb)
                width = string_width(string_hash_to_newline(text))
            cb.image_angle = -90
            cb.x = (40 + (i * 60))
            cb.y = (-300 - cb.width)
            cb.hspeed = 2
            cb.action = 3
            cb.vspeed = 6
        }
    }
    memory = 4
    if (memswitch == 1)
        memswitch = 0
    else
        memswitch = 1
    alarm[5] = 78
}
if (memory == 6)
{
    if (rounded == 0)
    {
        cb = instance_create(100, choose(40), obj_creditboss)
        cb.type = choose(1)
    }
    if (rounded == 1)
    {
        cb = instance_create(100, choose(260), obj_creditboss)
        cb.type = choose(1)
    }
    if (rounded == 2)
    {
        cb = instance_create(100, choose(40), obj_creditboss)
        cb.type = choose(0)
    }
    if (rounded == 3)
    {
        cb = instance_create(100, choose(260), obj_creditboss)
        cb.type = choose(0)
    }
    alarm[5] = 25
    rounded += 1
    if (rounded == 4)
        rounded = 0
}
if (memory == 7)
{
    cb = instance_create(-300, 360, obj_creditboss)
    cb.hspeed = 4
    cb.type = 3
    cb = instance_create(950, 120, obj_creditboss)
    cb.hspeed = -4
    cb.type = 3
    alarm[5] = 75
}
