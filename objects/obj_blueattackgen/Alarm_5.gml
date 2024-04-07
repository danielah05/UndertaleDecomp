if (instance_exists(blt_sizebone) == false && global.invc < 1)
{
    global.msg[0] = scr_gettext("obj_blueattackgen_90")
    global.msg[1] = scr_gettext("obj_blueattackgen_91")
    global.msg[2] = scr_gettext("obj_blueattackgen_92")
    global.typer = 22
    blcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
    var blcon_textofs = 15
    if (global.language == "ja")
        blcon_textofs += 11
    blconwd = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
    global.batmusic = global.batmusic2
    alarm[6] = 2
    obj_papyrusboss.dontcancel = 1
}
else
    alarm[5] = 2
