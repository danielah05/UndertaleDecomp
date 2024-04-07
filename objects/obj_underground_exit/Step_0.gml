if (con == 1)
{
    global.interact = 1
    con = 2
    global.msc = 812
    global.typer = 5
    global.facechoice = 0
    instance_create(0, 0, obj_dialoguer)
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    obj_mainchara.y += 5
    global.facing = Direction.Down
    global.interact = 0
    con = 0
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    con = 11
    vol = caster_get_volume(global.currentsong)
}
if (con == 11)
{
    vol -= 0.02
    caster_set_volume(global.currentsong, vol)
    if (vol <= 0.02)
    {
        caster_free(all)
        con = 12
        cym = caster_load("music/cymbal.ogg")
        caster_play(cym, 1, 1)
        zr = 0
    }
}
if (con == 12)
{
    z = instance_create(0, 0, obj_screenwhiter)
    z.ex = 2
    con = 13
}
if (con == 13)
{
    zr += 1
    if (zr >= 136)
    {
        room_goto(room_outsideworld)
        con = 14
    }
}
