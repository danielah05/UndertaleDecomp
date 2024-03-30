thensc = 0
sc = abs((floor((check.x / check.hspeed)) - floor((fatalx / check.hspeed))))
if (sc < 26)
    thensc = 10
if (sc < 20)
    thensc = 15
if (sc < 16)
    thensc = 30
if (sc < 12)
    thensc = 50
if (sc < 8)
    thensc = 75
if (sc < 5)
    thensc = 83
if (sc < 3)
    thensc = 90
if (sc < 2)
    thensc = 95
if (sc < 1)
{
    thensc = 110
    check.x = fatalx
}
myscore += thensc
fadebar = instance_create(check.x, check.y, obj_fadebar)
if (sc < 1)
{
    fadebar.image_index = 2
    fadebar.image_speed = 1
    snd_play(snd_victor)
}
else if (sc < 5)
{
    fadebar.image_index = 1
    snd_play(snd_hit)
}
with (check)
    instance_destroy()
