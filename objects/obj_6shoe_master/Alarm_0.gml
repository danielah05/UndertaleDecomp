if (type == 0)
{
    if (num != 12)
        instance_create((room_width + 10), 400, obj_6shoe_part)
    else
        instance_create((room_width + 50), 400, obj_6shoe_act)
    num += 1
    alarm[0] = 24
}
