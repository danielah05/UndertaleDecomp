cshot = instance_create(305, global.idealborder[2], obj_carrotshot)
if instance_exists(cshot)
{
    cshot.dmg = dmg
    if (shake == 1)
    {
        cshot.shake = 1
        cshot.alarm[0] = 2
    }
    alarm[0] = (rate / 3)
    if (mode == 1)
    {
        cshot2 = instance_create(305, global.idealborder[3], obj_carrotshot)
        if instance_exists(cshot2)
        {
            cshot2.gravity = (-cshot.gravity)
            cshot2.hspeed = (-cshot.hspeed)
            cshot2.dmg = dmg
        }
        alarm[0] = rate
    }
}
