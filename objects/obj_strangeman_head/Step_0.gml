siner += 1
siner2 += siner2v
x += ((sin((siner / s)) * sf) / 2)
y += ((sin((siner2 / s)) * sf2) / 2)
hspeed = hmem
counter += 1
if (counter > 30)
{
    if ((obj_heart.y + 6) < y)
        vspeed -= 0.05
    if ((obj_heart.y + 6) > y)
        vspeed += 0.05
}
if (x < -100)
    instance_destroy()
