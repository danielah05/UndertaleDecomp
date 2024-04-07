ry = 230
rx = choose(100, 430)
if (alrnum < 4)
{
    instance_create(rx, ry, obj_6book_wordbullet)
    alarm[6] = (45 + random(40))
    event_user(1)
}
