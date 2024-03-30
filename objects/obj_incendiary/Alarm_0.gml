if (number < 12)
{
    bomb2 = instance_create(((x + random(8)) - 4), (y - 18), obj_incendiary)
    if instance_exists(bomb2)
    {
        bomb2.hspeed = hspeed
        bomb2.number = (number + 1)
        bomb2.dmg = dmg
    }
}
