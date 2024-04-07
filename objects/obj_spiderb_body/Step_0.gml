if (mode == 1)
{
    if (sinert < 55)
    {
        if (pour == 0)
            alarm[5] = 1
        pour = 1
    }
    else
        sinert -= 1
}
if (purple > 0)
{
    depth -= 5
    if (purple > 160)
    {
        if ((1 - ((purple - 160) / 40)) < 0.1)
            depth = 5
    }
    if (purple > 210)
        depth = 5
}
else
    depth = 5
heady = (y + (sin((siner / 5)) * 4))
hairrot = (sin((siner / 5)) * 25)
for (i = 0; i < 5; i += 1)
{
    if (anim > (0 + (i * 5)) && anim < (7 + (i * 5)))
        eye[i] += 0.5
    if (anim > (12 + (i * 5)) && anim < (16 + (i * 5)))
        eye[i] -= 1
    if (anim > 70 && anim < 77)
        eye[i] += 0.5
    if (anim > 88 && anim < 95)
        eye[i] -= 0.5
}
if (hurt == false)
    siner += 1
anim += 1
if (anim > 110)
    anim = 0
