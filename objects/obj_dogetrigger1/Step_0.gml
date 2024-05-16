if (FL_DoggoStatus == DogStatus.Killed)
    visible = false
if (conversation == 1)
{
    caster_pause(global.currentsong)
    global.interact = 1
    image_yscale = 1
    visible = true
    sprite_index = spr_movedoge_o
    image_speed = 0.1
    y = 140
    vspeed = -0.5
    conversation = 2
}
if (conversation == 2 && y <= 120)
{
    y = 120
    alarm[0] = 20
    conversation = 3
    vspeed = 0
}
if (conversation == 4)
{
    global.msg[0] = scr_gettext("obj_dogetrigger1_108")
    global.msg[1] = scr_gettext("obj_dogetrigger1_109")
    global.msg[2] = scr_gettext("obj_dogetrigger1_110")
    global.msg[3] = scr_gettext("obj_dogetrigger1_111")
    if (scr_murderlv() >= 2)
    {
        global.msg[0] = scr_gettext("obj_dogetrigger1_114")
        global.msg[1] = scr_gettext("obj_dogetrigger1_115")
        global.msg[2] = scr_gettext("obj_dogetrigger1_116")
        global.msg[3] = scr_gettext("obj_dogetrigger1_117")
    }
    scr_regulartext()
    conversation = 5
}
if (conversation == 5 && instance_exists(OBJ_WRITER) == false)
{
    global.battlegroup = BattleGroup.Doggo
    FL_AreaKillsPointer = KillsPointer_Invalid
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    conversation = 5.5
}
if (global.plot == 41 && conversation == 5.5)
{
    global.interact = 1
    alarm[0] = 11
    conversation = 5.6
}
if (conversation == 5.6)
    global.interact = 1
if (global.plot == 41 && conversation == 6)
{
    caster_resume(global.currentsong)
    global.mercy = 0
    global.interact = 1
    if (FL_DoggoStatus == DogStatus.Killed)
    {
        global.plot = 42
        global.interact = 0
        instance_destroy()
        return;
    }
    if (FL_DoggoStatus == DogStatus.Spared || FL_DoggoStatus == DogStatus.SparedWithStick)
    {
        global.msg[0] = scr_gettext("obj_dogetrigger1_156")
        global.msg[1] = scr_gettext("obj_dogetrigger1_157")
        if (FL_DoggoStatus == DogStatus.SparedWithStick)
        {
            global.msg[0] = scr_gettext("obj_dogetrigger1_160")
            global.msg[1] = scr_gettext("obj_dogetrigger1_161")
            global.msg[2] = scr_gettext("obj_dogetrigger1_162")
            global.msg[3] = scr_gettext("obj_dogetrigger1_163")
        }
        conversation = 7
        scr_regulartext()
    }
}
if (conversation == 7 && instance_exists(OBJ_WRITER) == false)
{
    vspeed = 1
    alarm[0] = 20
    conversation = 8
}
if (conversation == 9)
{
    vspeed = 0
    global.plot = 42
    global.interact = 0
    instance_destroy()
}
