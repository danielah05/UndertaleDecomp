myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_librarynpc_jumbler_70")
if (FL_HarderPuzzleChoice == Choices.JuniorJumble)
{
    global.msg[0] = scr_gettext("obj_librarynpc_jumbler_73")
    global.msg[1] = scr_gettext("obj_librarynpc_jumbler_74")
}
if (FL_HarderPuzzleChoice == Choices.WordSearch)
{
    global.msg[0] = scr_gettext("obj_librarynpc_jumbler_78")
    global.msg[1] = scr_gettext("obj_librarynpc_jumbler_79")
}
if (global.plot >= 122)
{
    global.msg[0] = scr_gettext("obj_librarynpc_jumbler_84")
    global.msg[1] = scr_gettext("obj_librarynpc_jumbler_85")
}
if (FL_TruePacifist == true)
{
    if (FL_HarderPuzzleChoice == Choices.JuniorJumble)
    {
        global.msg[0] = scr_gettext("obj_librarynpc_jumbler_92")
        global.msg[1] = scr_gettext("obj_librarynpc_jumbler_93")
    }
    if (FL_HarderPuzzleChoice == Choices.WordSearch)
    {
        global.msg[0] = scr_gettext("obj_librarynpc_jumbler_97")
        global.msg[1] = scr_gettext("obj_librarynpc_jumbler_98")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
