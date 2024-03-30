for (i = 0; i < 16; i += 1)
{
    if (i != currentideal && i != (currentideal + 1))
    {
        sb = instance_create((x + 13), (y + 20), obj_sugarbullet)
        sb.idealspot = i
    }
}
currentideal += (choose(1, 2) * choose(-1, 1))
if (currentideal < 1)
    currentideal += 2
if (currentideal > 14)
    currentideal -= 2
