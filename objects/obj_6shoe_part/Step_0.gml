siner += 1
if (type == 0)
{
    if (counter > 0 && counter < 14)
        vspeed = -6
    if (counter == 14)
        vspeed = 0
    if (counter > 20 && counter < 30)
        vspeed = 8
    if (counter == 30)
        vspeed = 0
    if (counter > 40)
        counter = 1
}
if (type == 1)
{
    vspeed = 0
    if (speed > 0)
        speed -= 0.2
    else
        speed = 0
}
counter += 1
if (x < -100)
    instance_destroy()
