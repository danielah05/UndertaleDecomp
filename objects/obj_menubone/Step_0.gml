stoptimer = 1
siner += 1
x = (-30 + abs((sin((siner / 9)) * 105)))
if (x >= 64)
    siner -= 0.72
if (x < 10)
    stoptimer = 0
if (x <= -8)
{
    if (terminate == 1)
        instance_destroy()
}
