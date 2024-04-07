if (conversation == 1 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    conversation = 2
    with (obj_toroverworld3)
        path_start(path_torielwalk2, 3, path_action_stop, 1)
}
if instance_exists(obj_toroverworld3)
{
    if (conversation == 2 && obj_toroverworld3.path_position == 1)
    {
        conversation = 2.5
        with (obj_wallswitchcut1)
            on = 1
        with (obj_toroverworld3)
            path_end()
        obj_toroverworld3.direction = 90
        alarm[4] = 20
    }
}
if (conversation == 3 && instance_exists(OBJ_WRITER) == false)
{
    conversation = 4
    global.interact = 0
    global.plot = 3
}
if instance_exists(obj_toroverworld3)
{
    if (conversation == 4 && obj_toroverworld3.path_position == 1 && abs((obj_mainchara.y - obj_toroverworld3.y)) < 50)
    {
        conversation = 5
        with (obj_toroverworld3)
            path_start(path_walkup, 3, path_action_stop, 0)
    }
}
