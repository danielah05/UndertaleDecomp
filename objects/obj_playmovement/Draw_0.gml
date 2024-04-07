if (drawtext == 1)
{
    sn = instance_create(60, 180, obj_songwriter)
    sn.sting = string1
    if (global.language != "en")
    {
        sn.can_off = 0
        sn.alarm[3] = strtime1
    }
    drawtext = 0
}
if (drawtext2 == 1)
{
    sn2 = instance_create(60, 190, obj_songwriter)
    sn2.sting = string2
    if (global.language != "en")
    {
        sn2.can_off = 0
        sn2.alarm[3] = strtime2
    }
    drawtext2 = 0
}
