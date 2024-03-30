if instance_exists(blcon)
{
    with (blcon)
        instance_destroy()
}
if (image_alpha > 0.1)
{
    sprite_index = spr_torielboss_kneelsmile2
    y += 56
    image_xscale = 1
    image_yscale = 1
    killed = 1
    room_speed = 20
    instance_create(obj_heart.x, ((sprite_height / 2) + y), obj_torheart)
    FL_TorielStatus = TorielStatus.Killed
    ossafe_ini_open("undertale.ini")
    TK = ini_read_real("Toriel", "TK", 0)
    ini_write_real("Toriel", "TK", (TK + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    instance_destroy()
    image_alpha -= 0.05
    alarm[10] = 1
}
else
{
    caster_stop(global.batmusic)
    caster_free(global.batmusic)
    global.typer = 1
    scr_writetext(0, scr_gettext("obj_torielboss_240"), 0, 0)
    alarm[11] = 1
}
