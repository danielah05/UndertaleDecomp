siner += 1
cary = sin((siner / 2))
background_x_set(1, (background_x_get(1) - 0.25))
background_x_set(0, (background_x_get(0) - 0.1))
if (timer < 5)
{
    if (view_yview_get(0) > 0)
        view_yview_set(0, (view_yview_get(0) - 3))
    else
        view_yview_set(0, 0)
}
bgx -= 4
tile_layer_shift(1000000, -4, 0)
if (bgx <= -320)
{
    tile_layer_shift(1000000, 320, 0)
    bgx += 320
}
if (x >= 0 && td == 0)
{
    t1 = instance_create(20, 150, obj_creditsword)
    t1.text = scr_gettext("castroll_name_papyrus")
    if (global.language == "ja")
        t1.text_xofs = -3
    if (global.language == "ja")
        t1.text2 = scr_gettext("castroll_by_toby_and_temmie")
    else
        t1.text2 = scr_gettext("castroll_by_toby_and_temmie_nospace")
    td = 1
}
if (x >= xstart && timer < 170)
{
    x = xstart
    hspeed = 0
}
if (sans.x > 0 && td == 1)
{
    t2 = instance_create(180, 150, obj_creditsword)
    t2.text = scr_gettext("castroll_name_sans")
    if (global.language == "ja")
        t2.text_xofs = -3
    t2.text2 = scr_gettext("castroll_by_toby")
    td = 2
}
if (sans.x >= x)
{
    sans.sprite_index = spr_sans_trike_wink
    if (timer < 60)
        sans.hspeed = 0
    else
        sans.hspeed = 2
    timer += 1
}
if (sans.x > (x + 40))
{
    if (td == 2)
    {
        t1.fader = 1
        t2.fader = 1
        var xx = 20
        if (global.language == "ja")
            xx = 5
        t3 = instance_create(xx, 150, obj_creditsword)
        t3.text = scr_gettext("castroll_special_inspiration")
        t3.text2 = scr_gettext("castroll_jn_wiedle")
        td = 3
    }
    sans.sprite_index = spr_sans_trike
    if (sans.y > 60)
        sans.y -= 3
    else
        sprite_index = spr_papyrus_mad1
}
if (timer == 200)
{
    gravity_direction = 355
    gravity = 0.3
    hspeed = -3
}
if (timer > 200)
    siner += 1
if (timer > 240)
{
    if (td == 3)
    {
        t3.fader = 1
        td = 4
    }
}
if (timer >= 260)
{
    view_yview_set(0, (view_yview_get(0) + 4))
    if (view_yview_get(0) >= 194)
    {
        global.cast_type = 1
        room_goto(room_end_castroll)
    }
}
