if (con == 0)
{
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
    if (FL_SoSorryStatus == SoSorryStatus.Spared)
    {
        global.msg[0] = scr_gettext("obj_artclass_sign_224")
        skip = true
    }
    if (FL_TruePacifist == true)
    {
        global.msg[0] = scr_gettext("obj_artclass_sign_231")
        skip = true
    }
    if (skip == false)
    {
        if (current_weekday == 2 && current_month == 10 && current_day == 10)
            con = 1
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    talkedto += 1
}
