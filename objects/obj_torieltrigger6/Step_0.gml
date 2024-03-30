if (conversation == 1 && instance_exists(obj_dialoguer) == false)
{
    global.interact = 0
    conversation = 2
    with (toriel)
        path_start(path_walkright, 4, path_action_stop, 0)
    global.plot = 18
    instance_destroy()
}
