if (myinteract == 1 && con == 0)
{
    global.interact = 1
    myinteract = 0
    con = 2
}
if (con == 2)
{
    caster_pause(global.currentsong)
    snd_play(snd_power)
    sprite_index = spr_amalgam_save
    image_index = 0
    image_speed = 0
    con = 2.9
    alarm[4] = 45
}
if (con == 3.9)
{
    tr = caster_load("music/sfx_generate.ogg")
    caster_play(tr, 0.9, 0.7)
    con = 4
}
if (con == 4)
{
    image_speed = 0.334
    if (image_index >= 8)
    {
        image_index = 8
        image_speed = 0
        con = 5
        alarm[4] = 50
    }
}
if (con == 6)
{
    caster_free(tr)
    global.battlegroup = 82
    global.mercy = 1
    global.border = 0
    FL_TypeHeartTransition = HeartTransitionType.Normal
    instance_create(0, 0, obj_battler)
    con = 7
    alarm[4] = 32
}
if (con == 8)
{
    global.interact = 0
    global.mercy = 0
    caster_resume(global.currentsong)
    myinteract = 0
    FL_LemonBreadEvent = 1
    scr_tempsave()
    instance_destroy()
}
