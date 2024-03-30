if (exist < 10)
{
    alarm[0] = 5
    instance_create((((offx + x) + 46) + random(18)), (((y - 10) + (som * 4)) - random(6)), obj_orbsprinkle)
    instance_create((((offx + x) - 66) + random(18)), ((y + (som * 4)) - random(6)), obj_orbsprinkle)
}
if (exist >= 10)
{
    alarm[0] = 5
    if (parent.stare2 == 0)
        instance_create((((offx + x) + 46) + random(18)), (((y - 10) + (som * 4)) - random(6)), obj_orbsprinkle)
    if (parent.stare1 == 0)
        instance_create((((offx + x) - 66) + random(18)), ((y + (som * 4)) - random(6)), obj_orbsprinkle)
}
