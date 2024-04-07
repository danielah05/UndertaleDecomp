if (global.monsterhp[myself] > 0)
{
    blcon = instance_create(((x + sprite_width) + 21), (ystart + 24), obj_blconsm)
    mycommand = round(random(100))
    if (mycommand >= 0 && mycommand < 40)
        global.msg[0] = scr_gettext("obj_napstablook_294")
    if (mycommand >= 40 && mycommand < 66)
        global.msg[0] = scr_gettext("obj_napstablook_295")
    if (mycommand >= 66 && mycommand)
        global.msg[0] = scr_gettext("obj_napstablook_296")
    if (whatiheard == 0)
        global.msg[0] = scr_gettext("obj_napstablook_297")
    if (whatiheard == 1)
        global.msg[0] = scr_gettext("obj_napstablook_298")
    if (whatiheard == 3)
        global.msg[0] = scr_gettext("obj_napstablook_299")
    if (whatiheard == 4)
        global.msg[0] = scr_gettext("obj_napstablook_300")
    if (whatiheard == 4 && mercymod > -300)
        global.msg[0] = scr_gettext("obj_napstablook_301")
    if (whatiheard == 4 && mercymod > -200)
        global.msg[0] = scr_gettext("obj_napstablook_302")
    if (whatiheard != 4 && whatiheard != 3 && mercymod == -50 && mercer == 0)
    {
        global.msg[0] = scr_gettext("obj_napstablook_305")
        mercymod = -1200
        if instance_exists(blt_blookhat)
        {
            with (blt_blookhat)
                instance_destroy()
        }
    }
    if (whatiheard == 3 && mercymod == -49)
    {
        global.msg[0] = scr_gettext("obj_napstablook_311")
        alarm[7] = 60
        global.plot = 10.3
    }
    if (whatiheard == 4 && mercymod == -49)
    {
        global.msg[0] = scr_gettext("obj_napstablook_317")
        alarm[7] = 60
        global.plot = 10.3
    }
    else
    {
        global.border = 3
        if (global.turn == 1)
            global.border = 5
        obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
        obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
    }
    global.msg[1] = scr_gettext("obj_napstablook_329")
    global.typer = 2
    blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
}
else
{
    if instance_exists(dmgwriter)
    {
        with (dmgwriter)
            instance_destroy()
    }
    blcon = instance_create(((x + sprite_width) + 11), (y + 24), obj_blconwdflowey)
    global.msc = 0
    global.msg[0] = scr_gettext("obj_napstablook_339")
    global.msg[1] = scr_gettext("obj_napstablook_340")
    global.msg[2] = scr_gettext("obj_napstablook_341")
    global.msg[3] = scr_gettext("obj_napstablook_342")
    global.msg[4] = scr_gettext("obj_napstablook_343")
    global.msg[5] = scr_gettext("obj_napstablook_344")
    global.plot = 11
    conversation = 1
    image_speed = 0.2
    global.typer = 2
    blconwriter = instance_create((obj_blconwdflowey.x + 36), (obj_blconwdflowey.y + 10), OBJ_WRITER)
    alarm[9] = 2
}
mercer = 0
