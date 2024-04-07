if (con == 1)
{
    global.interact = 1
    with (obj_chipdoor_l)
        event_user(1)
}
if (con == 2)
{
    caster_loop(snd_bigdoor_open, 1, 1)
    con = 3
    alarm[4] = 50
    scr_conshakeinit()
}
if (con == 3)
{
    obj_chipdoor_l.x -= 0.4
    obj_chipdoor_r.x += 0.4
    scr_conshake(1)
}
if (con == 4)
{
    scr_conshakeend()
    caster_stop(snd_bigdoor_open)
    caster_play(snd_elecdoor_shutheavy, 1, 1)
    con = 5
    alarm[4] = 30
}
if (con == 6)
{
    caster_resume(global.currentsong)
    if (room == room_fire7)
        global.plot = 133
    if (room == room_fire_walkandbranch2)
        global.plot = 164
    global.interact = 0
    instance_destroy()
}
