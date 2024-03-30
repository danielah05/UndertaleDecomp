thensc = 0
sc = abs((floor((check.x / check.hspeed)) - floor((fatalx / check.hspeed))))
if (sc < 28)
    thensc = 10
if (sc < 22)
    thensc = 15
if (sc < 16)
    thensc = 20
if (sc < 10)
    thensc = 40
if (sc < 5)
    thensc = 50
if (sc < 4)
    thensc = 70
if (sc < 3)
    thensc = 80
if (sc < 2)
    thensc = 90
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
if (myscore > 430)
    myscore *= 1.8
if (myscore >= 400)
    myscore *= 1.25
