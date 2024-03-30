if (type == 0)
{
    if instance_exists(obj_asgore_lastcutscene)
        obj_asgore_lastcutscene.con = 45
    obj_asgore_lastcutscene.hearts = 0
    snd_play(snd_select)
    obj_heart.x = -999
    with (obj_fakeheart)
        instance_destroy()
    with (obj_anybt)
        instance_destroy()
}
if (type == 1)
{
    if instance_exists(obj_asgore_lastcutscene)
        obj_asgore_lastcutscene.con = 15
    obj_asgore_lastcutscene.hearts = 1
    snd_play(snd_select)
    obj_heart.x = -999
    with (obj_fakeheart)
        instance_destroy()
    with (obj_anybt)
        instance_destroy()
}
if (type == 2)
{
    snd_play(snd_select)
    caster_stop(all)
    snd_play(snd_laz)
    strike = scr_marker((obj_flowey_wilt.x + 25), (obj_flowey_wilt.y - 20), spr_strike)
    strike.image_xscale = 1
    strike.image_yscale = 1
    strike.image_speed = 0.25
    obj_flowey_wilt.alarm[8] = 22
    obj_flowey_wilt.alarm[7] = 60
    with (obj_anybt)
        instance_destroy()
    with (obj_fakeheart)
        instance_destroy()
}
if (type == 3)
{
    snd_play(snd_select)
    with (obj_flowey_wilt)
        event_user(1)
    with (obj_anybt)
        instance_destroy()
    with (obj_fakeheart)
        instance_destroy()
}
