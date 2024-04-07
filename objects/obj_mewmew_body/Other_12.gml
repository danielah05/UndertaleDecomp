with (obj_heart)
{
    visible = false
    movement = -1
    x = 308
    y = 308
}
if (attack_mode == 0)
{
    global.turntimer = 999
    with (obj_hearthalf)
        vertical_ok = 0
    shot_timer = 0
    shot_count = 0
    attack_mode = 1
    attack_timer = 0
    attack_timer_max = 30
    rep = 0
    maxrep = 5
    shot_a = 5
    shot_b = 7
    shot_c = 9
    if (pattern >= 10)
    {
        shot_a = 5
        shot_b = 6
        shot_c = 7
        attack_timer_max = 20
        maxrep = 10
    }
    if (pattern >= 14)
    {
        shot_a = 5
        shot_b = 99
        shot_c = 99
        attack_timer_max = 10
        maxrep = 20
    }
}
