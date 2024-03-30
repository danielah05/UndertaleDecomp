instance_create(240, 70, obj_toroverworld3)
if (global.plot < 19)
{
    with (obj_toroverworld3)
        path_start(path_torielwalkhouse2, 4, path_action_stop, 0)
}
if (global.plot > 18)
{
    with (obj_toroverworld3)
        path_start(path_torielwalkhouse3, 4, path_action_stop, 0)
}
FL_TorielStatus = TorielStatus.FirstTimeInHouse
