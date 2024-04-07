other.x = other.xprevious
other.y = other.yprevious
if (conversation == 0)
{
    instance_create(0, 0, obj_musfadeout)
    global.plot = 9
    global.interact = 1
    tor = instance_create(obj_torinteractable6.x, obj_torinteractable6.y, obj_toroverworld4)
    with (obj_torinteractable6)
        instance_destroy()
    with (obj_toroverworld4)
        path_start(path_torielwalk6, 3, path_action_stop, 0)
    conversation = 3
}
