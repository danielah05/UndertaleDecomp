if (transform == 1)
    stetch += 0.2
if (normal == 1)
{
    siner += 1
    rely += sin((siner / 12))
    x += (cos((siner / 24)) * 6)
    y += (sin((siner / 6)) * 0.25)
}
yoff = sin((siner / 6))
xoff = cos((siner / 3))
draw_set_color(c_black)
draw_set_alpha(image_alpha)
ossafe_fill_rectangle((x - 40), ((y + 20) + rely), (x + 42), ((y + 46) + rely))
draw_set_alpha(1)
draw_sprite_ext(spr_asrielfeet, 0, (x + (yoff * 2)), (((y + 168) - 112) + (rely * 0.9)), (2 + stetch), 2, torsorot, image_blend, image_alpha)
draw_sprite_ext(spr_torsoball, 0, (x + yoff), ((y + 48) + rely), (2 + stetch), 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_asrieltorso, 0, (x + yoff), ((y + 48) + rely), (2 + stetch), 2, torsorot, image_blend, image_alpha)
draw_sprite_ext(spr_asriellocket, 0, (x + 2), ((y + 34) + (rely * 1.2)), (2 + stetch), 2, 0, image_blend, image_alpha)
if (specialarm == 0)
{
    if (shrug == 0)
    {
        draw_sprite_ext(spr_asrielarm_r, 0, (x - 28), ((y + 38) + (rely * 1.2)), (-2 - stetch), 2, armrot_l, image_blend, image_alpha)
        draw_sprite_ext(spr_asrielarm_r, 0, (x + 30), ((y + 38) + (rely * 1.2)), (2 + stetch), 2, armrot_r, image_blend, image_alpha)
    }
    if (shrug == 1)
    {
        draw_sprite_ext(spr_asrielarm_r_shrug, 0, (x - 28), ((y + 38) + (rely * 1.2)), -2, 2, armrot_l, image_blend, image_alpha)
        draw_sprite_ext(spr_asrielarm_r_shrug, 0, (x + 30), ((y + 38) + (rely * 1.2)), 2, 2, armrot_r, image_blend, image_alpha)
    }
}
if (specialarm == 1)
{
    draw_sprite_ext(spr_asrielarm_r, 0, (x - 28), ((y + 38) + (rely * 1.2)), -2, 2, armrot_l, image_blend, arm_alpha)
    draw_sprite_ext(spr_asrielarm_r, 0, (x + 30), ((y + 38) + (rely * 1.2)), 2, 2, armrot_r, image_blend, arm_alpha)
}
if (specialarm == 2)
{
    draw_sprite_ext(spr_asrielarm_r, 0, (x - 28), ((y + 38) + (rely * 1.2)), -2, 2, armrot_l, image_blend, image_alpha)
    draw_sprite_ext(spr_asrielarm_r, 0, (x + 30), ((y + 38) + (rely * 1.2)), 2, 2, armrot_r, image_blend, arm_alpha)
}
draw_sprite_ext(spr_asrielshoulder_r, 0, (x - 28), ((y + 26) + (rely * 1.2)), (-2 - stetch), 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_asrielshoulder_r, 0, (x + 30), ((y + 26) + (rely * 1.2)), (2 + stetch), 2, 0, image_blend, image_alpha)
draw_sprite_ext(spr_asrielcollar, 0, x, ((y + 22) + (rely * 1)), (2 + stetch), 2, 0, image_blend, image_alpha)
if (shrug == 0)
    draw_sprite_ext(spr_asrielhead, global.faceemotion, (x + headx), ((y + (rely * 1.2)) + heady), (2 + stetch), 2, headrot, image_blend, image_alpha)
if (shrug == 1)
{
    shrug_x += 1
    draw_sprite_ext(spr_asriel_headshake_sassy, floor((shrug_x / 6)), (x + headx), ((y + (rely * 1.2)) + heady), (2 + stetch), 2, headrot, image_blend, image_alpha)
}
if (aligncon == 1)
{
    normal = 0
    xxx = mouse_x
    yyy = mouse_y
    xxx = 320
    yyy = 45
    if (s_s == 1)
        yyy = 100
    xxoff = (x - xxx)
    yyoff = (y - yyy)
    aligncon = 2
    altimer = 0
}
if (aligncon == 2)
{
    image_alpha = 1
    if (abs(relx) > 1)
        relx *= 0.7
    else
        relx = 0
    if (abs(rely) > 1)
        rely *= 0.7
    else
        rely = 0
    if (abs(yyoff) > 1)
        yyoff *= 0.7
    else
        yyoff = 0
    if (abs(xxoff) > 1)
        xxoff *= 0.7
    else
        xxoff = 0
    if (abs(armrot_l) > 1)
        armrot_l *= 0.7
    else
        armrot_l = 0
    if (abs(armrot_r) > 1)
        armrot_r *= 0.7
    else
        armrot_r = 0
    if (abs(torsorot) > 1)
        torsorot *= 0.7
    else
        torsorot = 0
    if (abs(headrot) > 1)
        headrot *= 0.7
    else
        headrot = 0
    altimer += 1
    x = (xxx + xxoff)
    y = (yyy + yyoff)
    if (altimer > 15)
    {
        image_alpha = 1
        aligncon = 3
        aimage = 0
    }
}
if (aligncon == 4)
{
    heady = 0
    headx = 0
    specialarm = 0
    arm_alpha = 0
    relx = 0
    rely = 0
    xxoff = 0
    yyoff = 0
    armrot_l = 0
    armrot_r = 0
    torsorot = 0
    headrot = 0
    aligncon = 0
    siner = 0
    aimage = 1
    normal = 1
    altimer = 0
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if (keyboard_check_pressed(ord("S")) && aligncon == 3)
    {
        type = 0
        starcon = 1
    }
    if (keyboard_check_pressed(ord("B")) && aligncon == 3)
    {
        type = 1
        starcon = 1
    }
    if (keyboard_check_pressed(ord("W")) && aligncon == 3)
    {
        type = 1
        bladecon = 1
    }
    if (keyboard_check_pressed(ord("G")) && aligncon == 3)
    {
        type = 1
        guncon = 1
    }
    if (keyboard_check_pressed(ord("H")) && aligncon == 3)
    {
        type = 1
        gonercon = 1
    }
}
if (starcon > 0)
{
    if (starcon == 1)
    {
        global.faceemotion = 2
        caster_play(powersfx, 0.8, 1)
        armraise = 20
        starcon = 2
        alarm[5] = 1
    }
    if (starcon == 3)
    {
        starcon = 4
        alarm[5] = 1
    }
    if (starcon == 5)
    {
        armrot_l -= armraise
        armrot_r += armraise
        armraise -= 2
        if (armraise <= 0)
        {
            starcon = 6
            alarm[5] = 20
        }
    }
    if (starcon >= 5 && starcon <= 9)
    {
        a_xx1 = (x - 28)
        a_yy1 = ((y + 38) + (rely * 1.2))
        a_x1_add = lengthdir_x(90, ((armrot_l - 90) - 15))
        a_y1_add = lengthdir_y(90, ((armrot_l - 90) - 15))
        repeat (2)
        {
            hl = instance_create((a_xx1 + a_x1_add), (a_yy1 + a_y1_add), obj_handlightning)
            hl.depth = (depth + 1)
            hl.type = type
        }
        a_xx2 = (x + 30)
        a_yy2 = ((y + 38) + (rely * 1.2))
        a_x2_add = lengthdir_x(90, ((armrot_r - 90) + 15))
        a_y2_add = lengthdir_y(90, ((armrot_r - 90) + 15))
        repeat (2)
        {
            hl = instance_create((a_xx2 + a_x2_add), (a_yy2 + a_y2_add), obj_handlightning)
            hl.depth = (depth + 1)
            hl.type = type
        }
    }
    if (starcon == 7)
    {
        starcon = 8
        alarm[5] = 15
    }
    if (starcon == 9)
        starcon = 12
    if (starcon == 12)
    {
        if (type == 0)
            gen = instance_create(0, 0, obj_stormstar_gen)
        if (type == 1)
            gen = instance_create(0, 0, obj_rainbowbolt_realgen)
        gen.h_mode = h_mode
        starcon = 13
        alarm[5] = 300
        if (type == 1)
            alarm[5] = 180
    }
    if (starcon == 13)
    {
        if (image_alpha > 0)
            image_alpha -= 0.05
    }
    if (starcon == 14)
    {
        global.faceemotion = 0
        with (gen)
            instance_destroy()
        armrot_l = 0
        armrot_r = 0
        image_alpha += 0.05
        if (image_alpha >= 1)
        {
            event_user(1)
            aligncon = 4
            starcon = 0
        }
    }
}
if (bladecon > 0)
{
    if (bladecon == 1)
    {
        armraise = 20
        bladecon = 2
        specialarm = 1
        alarm[6] = 30
    }
    if (bladecon == 2)
    {
        if (arm_alpha > 0)
            arm_alpha -= 0.05
    }
    if (bladecon == 3)
    {
        gen = instance_create(x, y, obj_asriel_swordmaster)
        gen.h_mode = h_mode
        bladecon = 4
        alarm[6] = 30
    }
    if (bladecon == 10)
    {
        heady = 0
        headrot = 0
        specialarm = 1
        arm_alpha = 0
        bladecon = 11
    }
    if (bladecon == 11)
    {
        image_alpha = 0
        heady = 0
        headx = 0
        specialarm = 0
        arm_alpha = 1
        x = 320
        y = 50
        relx = 0
        rely = 0
        xxoff = 0
        yyoff = 0
        armrot_l = 0
        armrot_r = 0
        torsorot = 0
        headrot = 0
        siner = 0
        altimer = 0
        bladecon = 12
    }
    if (bladecon == 12)
    {
        siner = 0
        image_alpha += 0.05
        if (image_alpha >= 1)
        {
            event_user(1)
            specialarm = 0
            aligncon = 4
            bladecon = 0
        }
    }
}
if (guncon > 0)
{
    if (guncon == 1)
    {
        arm_alpha = 1
        guncon = 2
        specialarm = 2
        alarm[7] = 20
    }
    if (guncon == 2)
    {
        if (arm_alpha > 0)
            arm_alpha -= 0.05
    }
    if (guncon == 3)
    {
        gen = instance_create((x + 70), (y + 15), obj_gunarm_firepattern)
        gen.h_mode = h_mode
        guncon = 4
        alarm[7] = 30
    }
    if (guncon == 7)
    {
        arm_alpha += 0.1
        if (arm_alpha >= 1)
            guncon = 8
    }
    if (guncon == 8)
    {
        aligncon = 1
        guncon = 9
        alarm[7] = 10
    }
    if (guncon == 10)
    {
        event_user(1)
        aligncon = 4
        guncon = 0
    }
}
if (gonercon > 0)
{
    if (gonercon == 1)
    {
        FL_AnimationIndex = 1
        gonercon = 2
        alarm[8] = 1
    }
    if (gonercon == 3)
    {
        gonercon = 4
        alarm[8] = 30
    }
    if (gonercon == 5)
    {
        with (obj_heart)
            ignore_border = 1
        ws = instance_create(0, 0, obj_hg_wholescreen)
        gonercon = 6
        alarm[8] = 40
    }
    if (gonercon == 7)
    {
        hg = instance_create(176, 16, obj_hg_body)
        gonercon = 8
    }
    if (gonercon == 10)
    {
        ws.con = 2
        shrug = 0
        specialnormal = 1
        global.faceemotion = 0
        FL_AnimationIndex = 0
        with (obj_hg_debris)
            instance_destroy()
        caster_play(cr, 0.9, 0.8)
        obj_heart.image_alpha = 1
        image_alpha = 0
        with (obj_heart)
        {
            ignore_border = 0
            x = 312
            y = ((global.idealborder[2] + global.idealborder[3]) / 2)
        }
        gonercon = 11
    }
    if (gonercon == 11)
    {
        obj_heart.depth = 0
        image_alpha += 0.1
        if (image_alpha >= 1)
        {
            image_alpha = 1
            gonercon = 12
            alarm[8] = 30
        }
    }
    if (gonercon == 13)
    {
        global.mnfight = 5
        gonercon = 0
    }
}
if (global.debug == true)
{
    if keyboard_check_pressed(vk_space)
    {
        s_s = 0
        if (aligncon == 0)
            aligncon = 1
        if (aligncon == 3)
            aligncon = 4
    }
    if control_check_pressed(MenuButton)
    {
        s_s = 1
        if (aligncon == 0)
            aligncon = 1
        if (aligncon == 3)
            aligncon = 4
    }
}
if (specialnormal == 1)
{
    sn += 1
    y = (50 + (sin((sn / 8)) * 4))
}
if (specialnormal == 0 && global.mnfight == 0 && global.myfight == 0)
{
    if (global.bmenuno == 1 || global.bmenuno == 2)
    {
        var mon_name = scr_gettext("monstername_99")
        fullphrase = ((" " + mon_name) + " ")
        len = string_length(fullphrase)
        if (global.language == "ja")
            global.monstername[0] = string_repeat("　", string_length(mon_name))
        else
            global.monstername[0] = string_repeat(" ", (2 + string_length(mon_name)))
        if instance_exists(OBJ_INSTAWRITER)
            OBJ_INSTAWRITER.originalstring = (scr_gettext("battle_name_header") + global.monstername[0])
        n_siner += 1
        scr_setfont(fnt_main)
        var textx = 110
        if (global.language == "ja")
            textx = 104
        for (i = 0; i < len; i += 1)
        {
            tcolor = make_color_hsv((((siner * 8) + (i * 8)) % 255), 140, 255)
            draw_set_color(tcolor)
            letter = string_char_at(fullphrase, i)
            draw_text_transformed((textx + (sin(((siner + i) / 5)) * 8)), (270 + (cos(((siner + i) / 5)) * 4)), string_hash_to_newline(letter), 1, 1, 0)
            if (global.language == "ja")
            {
                var ch = ord(letter)
                if (ch == 32 || ch >= 65377)
                    textx += 13
                else if (ch < 8192)
                    textx += 16
                else
                    textx += 26
            }
            else
                textx += 16
        }
    }
}
if (FL_AnimationIndex == 1)
    shrug = 1
else
    shrug = 0
