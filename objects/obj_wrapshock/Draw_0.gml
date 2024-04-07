if (oo == 0)
    oo = 1
else
    oo = 0
if (freeze == false)
    siner += 1
s_timer += 1
if (s_timer > 60)
    shock = 0
ss = ((sin((siner / 6)) * 90) * mf)
ii = ((-(sin((siner / 6)))) * mf)
if (mf < 1 && y < 0)
    y += 1
if (type == 0)
{
    if (mf < 1 && y < -30)
        y += 1
    x += ((cos((siner / 2)) * 0.5) * mf)
    y += ((sin((siner / 12)) * 0.8) * mf)
    if (ss < 0)
        image_blend = make_color_rgb(255, (255 + ss), (255 + ss))
    if (oo == 1)
        draw_sprite_ext(spr_toriel_wrapshock, 0, x, y, 2, 2, 0, c_white, ii)
    draw_sprite_ext(spr_toriel_wrap, 0, x, y, 2, 2, 0, image_blend, image_alpha)
    if (shock == 1)
        draw_sprite_ext(spr_face_torieldie, 0, (x + 58), (y - 52), 2, 2, 0, image_blend, image_alpha)
    else
    {
        if (face == 0)
            draw_sprite_ext(spr_face_torielpain, 0, (x + 58), (y - 52), 2, 2, 0, image_blend, image_alpha)
        if (face == 1)
            draw_sprite_ext(spr_face_torielencourage, 0, (x + 58), (y - 52), 2, 2, 0, image_blend, image_alpha)
        if (face == 2)
            draw_sprite_ext(spr_face_torielencourage, 1, (x + 58), (y - 52), 2, 2, 0, image_blend, image_alpha)
    }
}
if (type == 1)
{
    x += ((cos((siner / 2)) * 0.5) * mf)
    y += ((sin((siner / 12)) * 0.8) * mf)
    if (ss < 0)
        image_blend = make_color_rgb(255, (255 + ss), (255 + ss))
    if (oo == 1)
        draw_sprite_ext(spr_pap_wrapshock, 0, (x - 12), y, 2, 2, 0, c_white, ii)
    draw_sprite_ext(spr_papwrap, 0, x, y, 2, 2, 0, image_blend, image_alpha)
    if (shock == 1)
        draw_sprite_ext(spr_papface_fatal, 0, (x + 40), y, 2, 2, 0, image_blend, image_alpha)
    else
    {
        if (face == 0)
            draw_sprite_ext(spr_papface_wrap, 0, (x + 40), y, 2, 2, 0, image_blend, image_alpha)
        if (face == 1)
            draw_sprite_ext(spr_paphead_believe, 0, (x + 40), y, 2, 2, 0, image_blend, image_alpha)
        if (face == 2)
            draw_sprite_ext(spr_asgore_shockface, 0, (x + 40), y, 2, 2, 0, image_blend, image_alpha)
    }
}
if (type == 2)
{
    x += ((cos((siner / 2)) * 0.5) * mf)
    y += ((sin((siner / 12)) * 0.8) * mf)
    if (ss < 0)
        image_blend = make_color_rgb(255, (255 + ss), (255 + ss))
    if (oo == 1)
        draw_sprite_ext(spr_sanswrapshock, 0, x, y, 2, 2, 0, c_white, ii)
    draw_sprite_ext(spr_sanswrap, 0, x, y, 2, 2, 0, image_blend, image_alpha)
    if (shock == 1)
        draw_sprite_ext(spr_sanswrapface, 0, (x + 60), (y - 44), 2, 2, 0, image_blend, image_alpha)
    else
    {
        if (face == 0)
            draw_sprite_ext(spr_sanswrapface, 0, (x + 60), (y - 44), 2, 2, 0, image_blend, image_alpha)
        if (face == 1)
            draw_sprite_ext(spr_sanswrapface, 1, (x + 60), (y - 44), 2, 2, 0, image_blend, image_alpha)
        if (face == 2)
            draw_sprite_ext(spr_asgore_shockface, 0, (x + 40), y, 2, 2, 0, image_blend, image_alpha)
    }
}
if (type == 3)
{
    x += ((cos((siner / 2)) * 0.5) * mf)
    y += ((sin((siner / 12)) * 0.8) * mf)
    goof = (sin((siner / 5)) * 10)
    if (ss < 0)
        image_blend = make_color_rgb(255, (255 + ss), (255 + ss))
    draw_sprite_ext(spr_undyneb_hair, (siner / 5), (x - 30), ((y - 40) + (goof / 3)), 2, 2, 0, image_blend, 1)
    if (oo == 1)
        draw_sprite_ext(spr_undynewrapshock, 0, x, y, 2, 2, 0, c_white, ii)
    draw_sprite_ext(spr_undynewrap, floor((siner / 5)), x, y, 2, 2, 0, image_blend, image_alpha)
    if (shock == 1)
        draw_sprite_ext(spr_undyneface_fatal, 0, (x + 30), (y - 40), 2, 2, 0, image_blend, image_alpha)
    else
    {
        if (face == 0)
            draw_sprite_ext(spr_undyneface_wrap, floor((siner / 5)), (x + 30), (y - 40), 2, 2, 0, image_blend, image_alpha)
        if (face == 1)
            draw_sprite_ext(spr_undyneface_encourage, 0, (x + 30), (y - 40), 2, 2, 0, image_blend, image_alpha)
        if (face == 2)
            draw_sprite_ext(spr_asgore_shockface, 0, (x + 40), y, 2, 2, 0, image_blend, image_alpha)
    }
}
if (type == 4)
{
    x += ((cos((siner / 2)) * 0.5) * mf)
    y += ((sin((siner / 12)) * 0.8) * mf)
    if (ss < 0)
        image_blend = make_color_rgb(255, (255 + ss), (255 + ss))
    if (oo == 1)
        draw_sprite_ext(spr_alphyswrapshock, 0, x, y, 2, 2, 0, c_white, ii)
    draw_sprite_ext(spr_alphyswrap, 0, x, y, 2, 2, 0, image_blend, image_alpha)
    if (shock == 1)
        draw_sprite_ext(spr_alphysface_hit, 0, x, y, 2, 2, 0, image_blend, image_alpha)
    else
    {
        if (face == 0)
            draw_sprite_ext(spr_alphysface_wrap, 0, x, y, 2, 2, 0, image_blend, image_alpha)
        if (face == 1)
            draw_sprite_ext(spr_alphysface_wrap, 1, x, y, 2, 2, 0, image_blend, image_alpha)
        if (face == 2)
            draw_sprite_ext(spr_alphysface_wrap, 2, x, y, 2, 2, 0, image_blend, image_alpha)
    }
}
if (type == 5)
{
    x += ((cos((siner / 2)) * 0.5) * mf)
    y += ((sin((siner / 12)) * 0.8) * mf)
    if (ss < 0)
        image_blend = make_color_rgb(255, (255 + ss), (255 + ss))
    if (oo == 1)
        draw_sprite_ext(spr_asgore_wrapshock, 0, x, y, 2, 2, 0, c_white, ii)
    draw_sprite_ext(spr_asgore_wrap, 0, x, y, 2, 2, 0, image_blend, image_alpha)
    if (shock == 1)
        draw_sprite_ext(spr_asgore_shockface, 0, (x + 122), (y - 32), 2, 2, 0, image_blend, image_alpha)
    else
    {
        if (face == 0)
            draw_sprite_ext(spr_asgore_wrapface, 0, (x + 124), (y - 32), 2, 2, 0, image_blend, image_alpha)
        if (face == 1)
            draw_sprite_ext(spr_asgore_wrapface, 1, (x + 124), (y - 32), 2, 2, 0, image_blend, image_alpha)
        if (face == 2)
            draw_sprite_ext(spr_asgore_wrapface, 2, (x + 124), (y - 32), 2, 2, 0, image_blend, image_alpha)
    }
}
if (click == 1)
{
    draw_set_color(c_red)
    draw_text(400, 300, string_hash_to_newline(x))
    draw_text(400, 320, string_hash_to_newline(y))
    x = (mouse_x - 50)
    y = (mouse_y - 50)
}
