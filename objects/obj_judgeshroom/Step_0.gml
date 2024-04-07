scr_depth(0, 0, 0, 0, 0)
buffer -= 1
if (myinteract == 1 && buffer >= 0)
    myinteract = 0
if (con == 0 && myinteract == 1 && global.interact == 0 && buffer < 0)
{
    caster_pause(global.currentsong)
    con = 1
    global.interact = 1
    sprite_index = spr_mushroomdance_prep
    image_index = 0
}
if (con == 1)
{
    image_index += 0.25
    if (image_index >= 4)
    {
        global.msg[0] = scr_gettext("obj_judgeshroom_187")
        scr_regulartext()
        con = 2
        caster_loop(snd_mushroomdance, 1, 1)
        remx = x
        siner = 0
        image_index = 0
        image_speed = 0.2
        sprite_index = spr_mushroomdance_mid
    }
}
if (con == 2)
{
    siner += 1
    x = (remx + (sin((siner / 6)) * 2))
}
if (con == 9)
{
    global.msg[0] = scr_gettext("obj_judgeshroom_211")
    global.msg[0] = scr_gettext("obj_judgeshroom_213")
    global.msg[1] = scr_gettext("obj_judgeshroom_214")
    if (talkedto > 0)
    {
        global.msg[0] = scr_gettext("obj_judgeshroom_218")
        global.msg[1] = scr_gettext("obj_judgeshroom_219")
    }
    if (global.kills > 0)
    {
        global.msg[0] = scr_gettext("obj_judgeshroom_224")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_judgeshroom_226")
    }
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_judgeshroom_231")
        global.msg[1] = scr_gettext("obj_judgeshroom_232")
        global.msg[2] = scr_gettext("obj_judgeshroom_233")
    }
    scr_regulartext()
    con = 10
}
if (con == 7)
{
    image_index = 2
    con = 8
    alarm[4] = 40
}
if (con == 5)
{
    image_index = 1
    con = 6
    alarm[4] = 1
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    caster_stop(snd_mushroomdance)
    image_index = 0
    image_speed = 0
    if (x < remx)
        x += 1
    if (x > remx)
        x -= 1
    if (abs((x - remx)) < 1.5)
    {
        image_speed = 0
        x = remx
        sprite_index = spr_mushroomdance_end
        image_index = 0
        con = 4
        alarm[4] = 40
    }
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    talkedto += 1
    sprite_index = spr_mushroomdance_prep
    image_index = 0
    con = 0
    global.interact = 0
    myinteract = 0
    buffer = 5
    caster_resume(global.currentsong)
}
