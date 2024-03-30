if (global.interact == 0)
{
    global.battlegroup = 3
    instance_create(0, 0, obj_battleblcon)
    FL_TutorialFroggitEncountered = true
    instance_destroy()
}
