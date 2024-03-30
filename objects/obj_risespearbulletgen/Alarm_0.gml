if (global.turntimer > 8)
{
    xset = floor(random(3))
    if (xset == xsetmem)
        xset += 1
    if (xset == 3)
        xset = 0
    xsetmem = xset
    g = instance_create((obj_lborder.x + (xset * 23)), obj_dborder.y, obj_risespearbullet)
    g.type = offchoice
    alarm[0] = global.firingrate
}
