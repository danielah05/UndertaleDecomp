bg_siner = 0
dognumber = -1
con = 0
if (FL_DogShrineXboxProgress == 0)
{
    con = 1
    if (caster_is_playing(global.currentsong) != 1 && FL_TruePacifist == 0)
    {
        global.currentsong = mus_wind
        caster_loop(global.currentsong, 0.5, 0.5)
    }
    door = instance_create(135, 18, obj_dogmarker)
    with (door)
    {
        sprite_index = spr_dogshrine_doors
        depth = 910000
    }
    op[0] = spr_ds2_shrine
    ox[0] = 52
    oy[0] = 17
    op[1] = spr_ds2_lights
    ox[1] = 50
    oy[1] = 8
    op[2] = spr_ds2_portrait1
    ox[2] = 90
    oy[2] = 78
    op[3] = spr_ds2_certificate
    ox[3] = 204
    oy[3] = 70
    op[4] = spr_ds2_boombox
    ox[4] = 236
    oy[4] = 82
    op[5] = spr_ds2_goldbox
    ox[5] = 185
    oy[5] = 124
    op[6] = spr_ds2_mascot1
    ox[6] = 56
    oy[6] = 98
    op[7] = spr_ds2_rope
    ox[7] = 46
    oy[7] = 126
    op[8] = spr_ds2_rope
    ox[8] = 63
    oy[8] = 142
    op[9] = spr_ds2_blueprint
    ox[9] = 65
    oy[9] = 166
    op[10] = spr_ds2_portrait2
    ox[10] = 198
    oy[10] = 158
    op[11] = spr_ds2_dango
    ox[11] = 230
    oy[11] = 162
    op[12] = spr_ds2_dogtap
    ox[12] = 260
    oy[12] = 130
    op[13] = spr_ds2_cd
    ox[13] = 257
    oy[13] = 109
    for (i = 0; i < 2; i += 1)
    {
        oo[i] = instance_create(ox[i], oy[i], obj_dogmarker)
        oo[i].sprite_index = op[i]
        with (oo[i])
            depth = 900000
    }
    for (i = 2; i < 14; i += 1)
    {
        oo[i] = instance_create(ox[i], oy[i], obj_dogmarker)
        oo[i].sprite_index = op[i]
        with (oo[i])
            scr_depth()
    }
}
if (FL_DogShrineXboxProgress >= 1)
{
    slot = instance_create(142, 10, obj_inuslot)
    if (caster_is_playing(global.currentsong) != 1 && FL_TruePacifist == 0)
    {
        global.currentsong = mus_dogshrine_xbox
        caster_loop(global.currentsong, 1, 1)
    }
}
