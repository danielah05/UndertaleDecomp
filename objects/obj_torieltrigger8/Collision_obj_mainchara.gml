other.x = other.xprevious
other.y = other.yprevious
global.interact = 1
instance_create(60, 95, obj_toroverworld3)
with (obj_toroverworld3)
    path_start(path_torielwalkbasement1, 5, path_action_stop, 0)
conversation = 1
