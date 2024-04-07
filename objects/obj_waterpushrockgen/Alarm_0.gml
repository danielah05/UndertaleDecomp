if (global.interact != 5)
{
    if (room == room_water3 && rate_time > 85)
    {
        rate_time = 0
        i = 0
        instance_create(235, (-20 - (i * 16)), obj_waterpushrock)
        instance_create(325, (-20 - (i * 16)), obj_waterpushrock)
        instance_create(255, (-260 - (i * 16)), obj_waterpushrock)
        instance_create(345, (-260 - (i * 16)), obj_waterpushrock)
        instance_create(235, (-440 - (i * 16)), obj_waterpushrock)
        instance_create(255, (-460 - (i * 16)), obj_waterpushrock)
        instance_create(325, (-480 - (i * 16)), obj_waterpushrock)
        instance_create(345, (-500 - (i * 16)), obj_waterpushrock)
        alarm[0] = 90
    }
    else
        alarm[0] = 5
    if (room == room_water7)
    {
        instance_create(100, -10, obj_waterpushrock)
        instance_create(220, -10, obj_waterpushrock)
        instance_create(100, -40, obj_waterpushrock)
        instance_create(220, -40, obj_waterpushrock)
        instance_create(100, -80, obj_waterpushrock)
        instance_create(220, -80, obj_waterpushrock)
        alarm[0] = 40
    }
}
else
    alarm[0] = 5
