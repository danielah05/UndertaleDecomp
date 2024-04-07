if (global.debug == true)
{
    instance_create((room_width * 0.5), -100, obj_6glove_boss)
    instance_create((room_width * 0), -220, obj_6glove_boss)
    instance_create((room_width * 1), -220, obj_6glove_boss)
    instance_create((room_width * 0.5), -500, obj_6glove_boss)
    instance_create((room_width * 0), -620, obj_6glove_boss)
    instance_create((room_width * 1), -620, obj_6glove_boss)
    lg = instance_create((room_width * 0.5), -900, obj_6glove_boss)
    with (lg)
        event_user(6)
    instance_create((room_width * 0), -1020, obj_6glove_boss)
    instance_create((room_width * 1), -1020, obj_6glove_boss)
}
