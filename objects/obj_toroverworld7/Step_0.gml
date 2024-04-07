scr_depth(0, 0, 0, 0, 0)
if (instance_exists(obj_dialoguer) == false && conversation == 1)
{
    global.interact = 0
    conversation = 2
    myinteract = 0
    path_start(path_walkright, 4, path_action_continue, 0)
    instance_create(7, 0, obj_plotwall3)
    image_speed = 0.3
    global.plot = 8.5
    global.currentsong = caster_load("music/tension.ogg")
    caster_loop(global.currentsong, 1, 1)
}
scr_npcdir(0)
