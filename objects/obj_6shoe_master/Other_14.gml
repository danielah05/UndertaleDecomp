if (type == 2 || type == 0)
{
    type = 1
    for (i = 0; i < 30; i += 1)
        instance_create((starx + (i * 40)), (stary + (sin((siner / 9)) * 10)), obj_6shoe_musicnote)
}
