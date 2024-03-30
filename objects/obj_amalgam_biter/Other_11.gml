if (miss == -1)
    miss = floor(random(11))
else
{
    missadd = (1 + floor(random(6)))
    miss += (choose(1, -1) * missadd)
    if (miss < 0)
        miss = (0 + missadd)
    if (miss > 10)
        miss = (10 - missadd)
}
toothno = 0
tx = (global.idealborder[0] - 25)
repeat (5)
{
    if (toothno != miss)
    {
        downtooth = instance_create(tx, 0, obj_amalgam_tooth)
        downtooth.top = 0
    }
    toothno += 1
    tx += 25
    if (toothno != miss)
    {
        uptooth = instance_create(tx, 0, obj_amalgam_tooth)
        uptooth.top = 1
    }
    toothno += 1
    tx += 25
}
if (toothno != miss)
{
    downtooth = instance_create(tx, 0, obj_amalgam_tooth)
    downtooth.top = 0
}
