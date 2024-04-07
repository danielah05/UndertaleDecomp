if (dingus == 2)
{
    currentvol -= 0.02
    caster_set_volume(gameoversong, currentvol)
}
if control_check_pressed(InteractButton)
    event_user(0)
if (heartcon == 5)
{
    hearttimer += 1
    if (FL_ButItRefused < 2)
    {
        if (hearttimer > 80 && hearttimer < 120)
        {
            x = ((thisx + random(3)) - random(3))
            y = ((thisy + random(3)) - random(3))
        }
        if (hearttimer == 120)
        {
            x = (thisx + 2)
            y = thisy
            snd_play(snd_break1)
            sprite_index = spr_heart
        }
        if (hearttimer == 150)
        {
            global.typer = 61
            global.msc = 0
            global.msg[0] = scr_gettext("obj_heartdefeated_343")
            scr_setfont(fnt_main)
            instance_create((320 - round((string_width(string_hash_to_newline(global.msg[0])) / 2))), 100, OBJ_WRITER)
        }
        if (hearttimer == 220)
            instance_create(0, 0, obj_screenwhiter)
        if (hearttimer == 254)
        {
            global.border = 0
            global.hp = global.maxhp
            caster_free(all)
            with (obj_gameover)
                instance_destroy()
            room_goto(room_battle)
        }
    }
    else
    {
        if (hearttimer > 20 && hearttimer < 40)
        {
            x = ((thisx + random(3)) - random(3))
            y = ((thisy + random(3)) - random(3))
        }
        if (hearttimer == 40)
        {
            x = (thisx + 2)
            y = thisy
            snd_play(snd_break1)
            sprite_index = spr_heart
        }
        if (hearttimer == 60)
            instance_create(0, 0, obj_screenwhiter)
        if (hearttimer == 94)
        {
            global.border = 0
            global.hp = global.maxhp
            caster_free(all)
            with (obj_gameover)
                instance_destroy()
            room_goto(room_battle)
        }
    }
}
