if (global.mnfight == 3)
    attacked = 0
if (alarm[5] > 0)
{
    if (global.monster[0] == 1)
    {
        if (global.monsterinstance[0].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[0].alarm[5]
    }
    if (global.monster[1] == 1)
    {
        if (global.monsterinstance[1].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[1].alarm[5]
    }
    if (global.monster[2] == 1)
    {
        if (global.monsterinstance[2].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[2].alarm[5]
    }
}
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 110
        alarm[6] = 1
        talked = true
        global.heard = 0
    }
}
if control_check_pressed(InteractButton)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5] = 2
}
if (global.hurtanim[myself] == 1)
{
    global.faceemotion = 6
    caster_stop(global.batmusic)
    con = 15
    global.hurtanim[myself] = 99
}
if (global.hurtanim[myself] == 2 && con == 20)
{
    with (dmgwriter)
        alarm[2] = 15
    con = 20.1
    global.myfight = 0
    global.mnfight = 99
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_undynebattle2_488")
    }
    attacked = 1
    global.turntimer = -1
    global.mnfight = 3
    whatiheard = -1
}
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_undynebattle2_520")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                whatiheard = 9
            }
            if (whatiheard == 3)
            {
                con = 80
                global.msc = 0
                global.msg[0] = scr_gettext("obj_undynebattle2_530")
                encourage = 0
                criticize += 1
                hug = 0
                mercymod = -200
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
    }
}
if (con == 0)
{
    obj_heart.x = -200
    con = 1
    alarm[4] = 20
}
if (con == 1)
{
    global.myfight = 0
    global.mnfight = 99
    obj_heart.x = -200
}
if (con == 2)
    con = 4.1
if (con == 4.1)
{
    global.typer = 39
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynebattle2_578")
    global.msg[1] = scr_gettext("obj_undynebattle2_579")
    global.msg[2] = scr_gettext("obj_undynebattle2_580")
    global.msg[3] = scr_gettext("obj_undynebattle2_581")
    global.msg[4] = scr_gettext("obj_undynebattle2_582")
    global.msg[5] = scr_gettext("obj_undynebattle2_583")
    global.msg[6] = scr_gettext("obj_undynebattle2_584")
    scr_blcon_x(blconx, blcony)
    obj_heart.x = -200
    con = 4.2
}
if (con == 4.2)
    scr_textskip()
if (con == 4.2 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 8
    global.msg[0] = scr_gettext("obj_undynebattle2_599")
    global.mnfight = 3
    global.myfight = 0
    con = 5
}
if (con == 15)
{
    wht = scr_marker(-2, -2, spr_pixwht)
    wht.depth = -99999
    wht.image_speed = 0
    wht.image_xscale = 400
    wht.image_yscale = 400
    wht.image_alpha = 0
    con = 16
}
if (con == 16)
{
    wht.image_alpha += 0.02
    if (wht.image_alpha >= 1)
    {
        con = 17
        alarm[4] = 45
    }
}
if (con == 18)
{
    with (wht)
        instance_destroy()
    con = 19
    shudder = 8
    alarm[3] = 1
    global.hurtanim[myself] = 3
}
if (con == 20.1)
{
    con = 20.2
    alarm[4] = 70
}
if (con == 21.2)
{
    global.msc = 0
    global.typer = 39
    global.msg[0] = scr_gettext("obj_undynebattle2_645")
    global.msg[1] = scr_gettext("obj_undynebattle2_646")
    global.msg[2] = scr_gettext("obj_undynebattle2_647")
    global.msg[3] = scr_gettext("obj_undynebattle2_648")
    global.msg[4] = scr_gettext("obj_undynebattle2_649")
    global.msg[5] = scr_gettext("obj_undynebattle2_650")
    scr_blcon_x(blconx, blcony)
    con = 23
}
if (con == 23)
    scr_textskip()
if (con == 23 && instance_exists(OBJ_WRITER) == false)
{
    mypart1.off = 1
    if (mypart1.noanim == 1)
        con = 24
}
if (con == 24)
{
    global.msc = 0
    global.typer = 39
    global.msg[0] = scr_gettext("obj_undynebattle2_670")
    global.msg[1] = scr_gettext("obj_undynebattle2_671")
    global.msg[2] = scr_gettext("obj_undynebattle2_672")
    global.msg[3] = scr_gettext("obj_undynebattle2_673")
    global.msg[4] = scr_gettext("obj_undynebattle2_674")
    global.msg[5] = scr_gettext("obj_undynebattle2_678")
    global.msg[6] = scr_gettext("obj_undynebattle2_679")
    global.msg[7] = scr_gettext("obj_undynebattle2_680")
    global.msg[8] = scr_gettext("obj_undynebattle2_681")
    global.msg[9] = scr_gettext("obj_undynebattle2_682")
    global.msg[10] = scr_gettext("obj_undynebattle2_683")
    global.msg[11] = scr_gettext("obj_undynebattle2_684")
    global.msg[12] = scr_gettext("obj_undynebattle2_685")
    global.msg[13] = scr_gettext("obj_undynebattle2_686")
    global.msg[14] = scr_gettext("obj_undynebattle2_687")
    global.msg[15] = scr_gettext("obj_undynebattle2_688")
    global.msg[16] = scr_gettext("obj_undynebattle2_689")
    global.msg[17] = scr_gettext("obj_undynebattle2_690")
    global.msg[18] = scr_gettext("obj_undynebattle2_691")
    global.msg[19] = scr_gettext("obj_undynebattle2_692")
    global.msg[20] = scr_gettext("obj_undynebattle2_693")
    global.msg[21] = scr_gettext("obj_undynebattle2_694")
    global.msg[22] = scr_gettext("obj_undynebattle2_695")
    scr_blcon_x((blconx - 70), blcony)
    con = 25
}
if (con == 25)
    scr_textskip()
if (con == 25 && instance_exists(OBJ_WRITER) == false)
{
    con = 26
    alarm[4] = 15
}
if (con == 27)
{
    instance_create(0, 0, obj_unfader)
    con = 28
    alarm[4] = 12
}
if (con == 29)
{
    ossafe_ini_open("undertale.ini")
    udhd = ini_read_real("Undyne", "UD", 0)
    ini_write_real("Undyne", "UD", (udhd + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    global.phasing = 0
    FL_MenuDisabled = false
    global.mercy = 0
    instance_create(0, 0, obj_persistentfader)
    FL_UndyneDateStatus = UndyneDateStatus.LeftHouse
    room_goto(room_water_undyneyard)
}
if (con == 80 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_laz)
    global.damage = 1
    global.hurtanim[myself] = 1
}
if (global.myfight == 4)
{
    if (global.mercyuse == false)
    {
        scr_mercystandard()
        if (mercy < 0)
            instance_destroy()
    }
}
if (mercymod == 222 && instance_exists(OBJ_WRITER) == false)
{
    scr_mercystandard()
    if (mercy < 0)
        instance_destroy()
}
