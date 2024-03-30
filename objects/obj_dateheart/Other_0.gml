if (instance_exists(obj_papdate) && deleteafter == 0)
{
    global.msg[0] = scr_gettext("obj_dateheart_365")
    global.msg[1] = scr_gettext("obj_dateheart_366")
    global.msg[2] = scr_gettext("obj_dateheart_367")
    deleteafter = 1
    x = xstart
    y = ystart
    event_user(1)
}
