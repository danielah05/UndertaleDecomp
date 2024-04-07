if (doomcon == 0)
{
    if (global.faceemotion == 1)
        image_index = 1
    if (global.faceemotion == 2)
        image_index = 2
    if (global.faceemotion == 3)
        image_index = 0
}
if (writing == 1)
{
    if (instance_exists(OBJ_WRITER) == false)
    {
        writing = 0
        event_user(2)
    }
}
if instance_exists(OBJ_WRITER)
{
    if (FL_AnimationIndex == 1 && OBJ_WRITER.stringno != flag20_laststr)
    {
        flag20_laststr = OBJ_WRITER.stringno
        if (image_index < 14)
            image_index += 1
    }
}
else
    flag20_laststr = -1
FL_AnimationIndex = 0
if (con == 16)
{
    if (instance_exists(OBJ_WRITER) == false)
    {
        fader = 1
        con = 17
        alarm[4] = 30
        snd_play(snd_escaped)
    }
}
if (con == 18)
{
    global.typer = 73
    global.msg[0] = scr_gettext("obj_flowey_wilt_309")
    instance_create(120, 50, OBJ_WRITER)
    con = 19
    alarm[4] = 210
}
if (con == 20)
{
    doomcon = 6
    alarm[9] = 10
    con = 21
}
if (fader == 1)
    image_alpha -= 0.01
if (doomcon == 0.5)
{
    doomcon = 0.6
    shudder = 8
    alarm[6] = 1
}
if (doomcon == 1)
{
    ossafe_ini_close()
    FL_KilledFlowey = 1
    ossafe_ini_open("undertale.ini")
    K = ini_read_real("Flowey", "K", 0)
    if (K == 0)
        ini_write_real("Flowey", "K", 1)
    ini_write_real("FFFFF", "E", 2)
    ossafe_ini_close()
    ossafe_savedata_save()
    global.msc = 0
    global.msg[0] = scr_gettext("obj_flowey_wilt_348")
    global.typer = 71
    instance_create((x - 60), (y - 30), OBJ_WRITER)
    doomcounter = 0
    doomcon = 2
    sprite_index = spr_flowey_wilted_l
    image_speed = 0.3
}
if (doomcon == 2)
{
    image_speed += 0.0025
    if (image_speed >= 0.5)
        doomcon = 3
}
if (doomcon == 3)
{
    image_speed -= 0.004
    if (image_speed <= 0)
    {
        doomcon = 4
        sprite_index = spr_flowey_wilted_d
        image_index = 0
        image_speed = 0
        alarm[5] = 80
    }
}
if (doomcon == 5)
{
    image_speed = 0.2
    if (image_index >= 6)
    {
        image_index = 6
        doomcon = 6
        alarm[9] = 150
        image_speed = 0
    }
}
if (doomcon == 7)
{
    instance_create(0, 0, obj_unfader)
    doomcon = 8
    alarm[9] = 12
}
if (doomcon == 9)
{
    global.entrance = 0
    instance_create(0, 0, obj_persistentfader)
    ossafe_ini_open("undertale.ini")
    ini_write_real("FFFFF", "E", 2)
    ossafe_ini_close()
    ossafe_savedata_save()
    room_goto(room_castle_exit)
}
