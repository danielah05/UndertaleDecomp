alarm[0] = 2
if (global.inbattle == false && nowroom != room && global.interact == 0 && FL_UnknownBoolean17 == false && instance_exists(obj_mainchara))
{
    qtimer += 1
    if (qtimer > 90)
    {
        guilt = 1
        alarm[0] = -1
    }
}
