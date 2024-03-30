side = choose(0, 1, 2)
if (sider == 0)
{
    if (side == 0)
    {
        ff = instance_create((100 + random(400)), 200, obj_floweyfly)
        ff.parent = id
        with (ff)
            move_towards_point((parent.x + 65), (parent.y + 115), 11)
    }
    if (side == 1)
    {
        ff = instance_create(680, (200 + random(300)), obj_floweyfly)
        ff.parent = id
        with (ff)
            move_towards_point((parent.x + 65), (parent.y + 115), 11)
    }
    if (side == 2)
    {
        ff = instance_create((100 + random(700)), 500, obj_floweyfly)
        ff.parent = id
        with (ff)
            move_towards_point((parent.x + 65), (parent.y + 115), 11)
    }
}
if (sider == 1)
{
    if (side == 0)
    {
        ff = instance_create((100 + random(400)), 200, obj_floweyfly)
        ff.parent = id
        with (ff)
            move_towards_point((parent.x - 65), (parent.y + 115), 11)
    }
    if (side == 1)
    {
        ff = instance_create(-30, (200 + random(300)), obj_floweyfly)
        ff.parent = id
        with (ff)
            move_towards_point((parent.x - 65), (parent.y + 115), 11)
    }
    if (side == 2)
    {
        ff = instance_create((-100 + random(660)), 500, obj_floweyfly)
        ff.parent = id
        with (ff)
            move_towards_point((parent.x - 65), (parent.y + 115), 11)
    }
}
amt += 1
alarm[2] = 2
if (amt > 35)
{
    alarm[2] = -1
    wait = 0
    con = 5
}
