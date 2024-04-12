scr_depth(0, 0, 0, 0, 0)
if (myinteract == 1)
{
    if (con == 0)
    {
        global.interact = 1
        myinteract = 3
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        skip = false
        global.msg[0] = scr_gettext("obj_artclass_sign_208")
        if (murd == 1)
        {
            skip = true
            global.msg[0] = scr_gettext("obj_artclass_sign_213")
        }
        if (FL_SoSorryStatus == SoSorryStatus.Killed)
        {
            global.msg[0] = scr_gettext("obj_artclass_sign_218")
            skip = true
        }
        if (FL_SoSorryStatus == SoSorryStatus.Killed)
        {
            global.msg[0] = scr_gettext("obj_artclass_sign_224")
            skip = true
        }
        if (FL_TruePacifist == true || FL_DisableRandomEncounters == true)
        {
            global.msg[0] = scr_gettext("obj_artclass_sign_231")
            skip = true
        }
        if (skip == false)
        {
            // Daniela: Extra decomp only code here to allow to force the battle, no matter what day it is.
			if (current_month == 10 && current_day == 10 || global.decomp_vars.ForceSoSorry && !global.decomp_vars.VanillaMode)
            {
                con = 1
                myinteract = -1
            }
        }
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        talkedto += 1
    }
    else
        myinteract = 0
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == false)
    {
        global.interact = 0
        myinteract = 0
    }
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
    global.facing = Direction.Down
    snd_play(snd_escaped)
    con = 2
    alarm[4] = 60
    global.interact = 1
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    global.facing = Direction.Down
    global.interact = 1
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_artclass_sign_281")
    global.msg[1] = scr_gettext("obj_artclass_sign_282")
    scr_regulartext()
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_arrow)
    sory = scr_marker((obj_mainchara.x - 10), 240, spr_sorry_u)
    sory.vspeed = -5
    sory.depth = 1000
    sory.image_speed = 0.5
    con = 5
}
if (con == 5)
{
    if (sory.y <= (obj_mainchara.y + 15))
    {
        with (sory)
            instance_destroy()
        snd_play(snd_impact)
        dk = scr_marker(-5, -5, spr_pixblk)
        dk.image_xscale = 300
        dk.image_yscale = 300
        con = 6
        alarm[4] = 40
    }
}
if (con == 7)
{
    with (dk)
        instance_destroy()
    global.battlegroup = 140
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    con = 8
    alarm[4] = 31
}
if (con == 9)
{
    myinteract = 0
    global.mercy = 0
    global.interact = 0
    con = 0
    alarm[4] = -1
}
