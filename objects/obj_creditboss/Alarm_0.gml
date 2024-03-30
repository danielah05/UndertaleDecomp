truetype = type
active = true
if (truetype == 0)
{
    for (i = 0; i < 5; i += 1)
    {
        event_user(0)
        cb_a[i] = cb
        cb_a[i].x = (760 + (40 * i))
        cb_a[i].y = (y + (40 * i))
        cb_a[i].hspeed = -10
        cb_a[i].action = 1
    }
}
if (truetype == 1)
{
    for (i = 0; i < 5; i += 1)
    {
        event_user(0)
        cb_a[i] = cb
        cb_a[i].x = (-120 - (40 * i))
        cb_a[i].y = (y + (40 * i))
        cb_a[i].hspeed = 10
        cb_a[i].action = 1
    }
}
if (truetype == 2)
{
    event_user(0)
    cb_a = cb
    with (cb_a)
        width = string_width(string_hash_to_newline(text))
    cb_a.x = ((x - cb_a.width) - 30)
    cb_a.y = -200
    cb_a.vspeed = 12
    cb_a.action = 2
    cb_a.stretch = 1
    event_user(0)
    cb_b = cb
    with (cb_b)
        width = string_width(string_hash_to_newline(text))
    cb_b.x = ((x + cb_b.width) + 30)
    cb_b.y = -200
    cb_b.vspeed = 12
    cb_b.action = 2
    cb_b.stretch = 1
    alarm[0] = 4
}
if (truetype == 3)
{
    if (y > 240)
        myaa = 3
    else
        myaa = -3
    angrand = random(360)
    for (i = 0; i < 10; i += 1)
    {
        event_user(0)
        cb_a[i] = cb
        cb_a[i].aa = myaa
        cb_a[i].stretch = 2
        cb_a[i].stretchfactor = 55
        cb_a[i].image_angle = (((i / 10) * 360) + angrand)
        cb_a[i].x = x
        cb_a[i].y = y
        with (cb_a[i])
        {
            x += lengthdir_x(55, image_angle)
            y += lengthdir_y(60, image_angle)
        }
    }
}
