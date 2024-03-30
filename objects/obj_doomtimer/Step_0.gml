if (dx < 120)
    doomtime += 1
if (dx < 90)
    doomtime += 0.3
if (dx > 100)
    doomtime -= 0.3
if (dx > 110)
    doomtime -= 0.5
if (dx >= 120 && instance_exists(obj_battlebomb))
{
    if (obj_battlebomb.defuse == false && obj_battlebomb.mypart1.got == false && dr == 0)
    {
        dr = 1
        FL_FailedBombDefusing = true
        obj_battlebomb_body.type = 99
        obj_battlebomb_body.bombtype = 99
        obj_battlebomb_body.speed = 0
        obj_battlebomb.failure = true
        obj_battlebomb.con = 1001
    }
}
if (dx >= 120 && global.inbattle == false && global.interact == 0)
{
    finaltimer += 1
    if (finaltimer > 5)
    {
        with (obj_mettnewsevent)
            failure = 1
        with (obj_mettnewsevent)
            con = 160
        instance_destroy()
    }
}
if (view_yview_get(0) <= 0)
    view_yview_set(0, 0)
