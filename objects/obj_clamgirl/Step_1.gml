scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (myinteract > 0)
    sprite_index = spr_clamgirl_b
else
    sprite_index = spr_clamgirl_a
if (gcon == 1 && global.interact == 0)
{
    gtimer += 1
    if (gtimer >= 15)
    {
        global.interact = 1
        myinteract = -1
        visible = false
        clam = scr_marker(x, y, spr_clam_goner_b)
        clam.image_speed = 0.15
        caster_free(all)
        global.msg[0] = scr_gettext("obj_clamgirl_107")
        gcon = 2
        global.typer = 5
        global.msc = 0
        global.fc = 0
        d = instance_create(x, y, obj_dialoguer)
        d.side = 0
    }
}
if (gcon == 2 && (!instance_exists(OBJ_WRITER)))
{
    snd_play(snd_mysterygo)
    FL_Fun = 0
    global.interact = 0
    gcon = 3
    with (clam)
        instance_destroy()
    instance_destroy()
}
