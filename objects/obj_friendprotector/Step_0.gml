if (fade == 1)
{
    l_timer += 1
    if (l_timer > 15)
        image_alpha -= 0.1
    if (image_alpha < 0.1)
        instance_destroy()
}
if (oo == 0)
    visible = false
if (oo == 1)
    visible = true
if (timer > 7)
{
    oo = 1
    visible = true
    if (go == 1)
        speed = 0.5
}
if (oo == 0)
    oo = 1
else
    oo = 0
timer += 1
