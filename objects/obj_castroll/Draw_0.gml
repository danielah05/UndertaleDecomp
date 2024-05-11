var namescale = 3
var infoscale = 2
var info_yofs = 0
if (global.language == "ja")
{
    namescale = 2
    infoscale = 1.5
    info_yofs = 10
}
if (global.cast_type == 0)
{
    timer += 1
    if (timer > 3)
    {
        draw_set_color(c_white)
        scr_setfont(fnt_maintext)
        draw_sprite_ext(spr_undertaletitle, 0, 0, -100, 2, 2, 0, c_white, 1)
        scr_drawtext_centered_scaled(320, 280, scr_gettext("castroll_title"), 3, 3)
    }
    if (timer > 244)
        active = true
}
if (active == true)
    view_yview_set(0, (view_yview_get(0) + 2))
if (active == true)
{
    if (global.cast_type == 0)
    {
        g = 0
        scr_setfont(fnt_maintext)
        draw_set_color(c_white)
        mon = froggit
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_froggit"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedFroggit == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_froggit"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_froggit"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        scr_drawtext_centered_scaled(col2_x, 530, scr_gettext("castroll_name_whimsun"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, 570, scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedWhimsun == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, (710 + info_yofs), scr_gettext("castroll_white_whimsun"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, (710 + info_yofs), scr_gettext("castroll_yellow_whimsun"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = moldsmal
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_moldsmal"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedMoldsmal == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_moldsmal"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_moldsmal"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = loox
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_loox"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_temmie"), 1, 1)
        if (FL_SparedLoox == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_loox"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_loox"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = vegetoid
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_vegetoid"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_toby_and_temmie"), 1, 1)
        if (FL_SparedVegetoid == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_vegetoid"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_vegetoid"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = migosp
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_migosp"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedMigosp == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_migosp"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_migosp"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = napstablook
        scr_drawtext_centered_scaled(330, (mon.y - 70), scr_gettext("castroll_name_napstablook"), namescale, namescale)
        scr_drawtext_centered_scaled(330, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_NapstablookStatus == NapstablookStatus.NotSet)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(330, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_napstablook"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(330, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_napstablook"), infoscale, infoscale)
        }
        if (view_yview_get(0) > 1520 && view_yview_get(0) < 1540)
            exper = 0
        if (view_yview_get(0) > 1540)
        {
            exper += 0.2
            view_yview_set(0, (view_yview_get(0) + exper))
            if (view_yview_get(0) > (napstablook.y + 305))
            {
                do_room_goto = true
                do_room_goto_target = room_end_highway
            }
        }
    }
    if (global.cast_type == 1)
    {
        g = 0
        draw_set_alpha(1)
        scr_setfont(fnt_maintext)
        draw_set_color(c_white)
        draw_set_color(c_white)
        mon = snowdrake
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_snowdrake"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_magnolia_porter"), 1, 1)
        if (FL_SparedSnowdrake == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_snowdrake"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_snowdrake"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = icecap
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_icecap"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_magnolia_porter"), 1, 1)
        if (FL_SparedIcecap == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_icecap"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_icecap"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = gyftrot
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_gyftrot"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_magnolia_porter_and_toby"), 1, 1)
        if (FL_SparedGyftrot == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_gyftrot"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_gyftrot"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = doggo
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_doggo"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedDoggo == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_doggo"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_doggo"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = dogamy
        scr_drawtext_centered_scaled(320, (mon.y - 70), scr_gettext("castroll_name_dogamy"), namescale, namescale)
        scr_drawtext_centered_scaled(320, (mon.y - 30), scr_gettext("castroll_by_toby_2"), 1, 1)
        if (FL_SparedDogCouple == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(320, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_dogamy"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(320, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_dogamy"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = lesserdog
        scr_drawtext_centered_scaled((col1_x - 20), (mon.y - 70), scr_gettext("castroll_name_lesserdog"), namescale, namescale)
        scr_drawtext_centered_scaled((col1_x - 20), (mon.y - 30), scr_gettext("castroll_by_temmie_and_toby"), 1, 1)
        if (FL_SparedLesserDog == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled((col1_x - 20), ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_lesserdog"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled((col1_x - 20), ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_lesserdog"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = greaterdog
        scr_drawtext_centered_scaled((col2_x + 20), (mon.y - 70), scr_gettext("castroll_name_greaterdog"), namescale, namescale)
        scr_drawtext_centered_scaled((col2_x + 20), (mon.y - 30), scr_gettext("castroll_by_toby_and_temmie"), 1, 1)
        if (FL_SparedGreaterDog == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled((col2_x + 20), ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_greaterdog"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled((col2_x + 20), ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_greaterdog"), infoscale, infoscale)
        }
        if (view_yview_get(0) > 1920 && view_yview_get(0) < 1940)
            exper = 0
        if (view_yview_get(0) > 1940)
        {
            vol -= 0.02
            caster_set_volume(all, vol)
            exper += 0.5
            view_xview_set(0, (view_xview_get(0) - exper))
            if (view_xview_get(0) < -600)
            {
                do_room_goto = true
                do_room_goto_target = room_end_beach
            }
        }
    }
    if (global.cast_type == 2)
    {
        g = 0
        draw_set_alpha(1)
        scr_setfont(fnt_maintext)
        draw_set_color(c_white)
        draw_set_color(c_white)
        mon = aaron
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_aaron"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_temmie_2"), 1, 1)
        if (FL_AaronWoshuaEvent == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_aaron"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_aaron"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = moldbygg
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_moldbygg"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedMoldsmalx == false)
        {
            draw_set_color(c_white)
            var moldbygg_w_infoscale_x = 1.5
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_moldbygg"), moldbygg_w_infoscale_x, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_moldbygg"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = woshua
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_woshua"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_extra_woshua"), 1, 1)
        if (FL_SparedWoshua == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_woshua"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_woshua"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = temmie
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_temmie"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_extra_temmie"), 1, 1)
        if (FL_SparedTemmie == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_temmie"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_temmie"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        if (FL_MadMewMewStatus < MadMewMewStatus.Spared)
        {
            mon = maddummy
            scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_maddummy"), namescale, namescale)
            scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
            if (FL_SparedMaddummy == false)
            {
                draw_set_color(c_white)
                scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_maddummy"), infoscale, infoscale)
            }
            else
            {
                draw_set_color(c_yellow)
                scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_maddummy"), infoscale, infoscale)
            }
        }
        else
        {
            mon = mewmew
            scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_mewmew"), namescale, namescale)
            scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_gigi_and_temmie_and_toby"), 1, 1)
            if (FL_MadMewMewStatus >=  MadMewMewStatus.Spared)
            {
                draw_set_color(c_white)
                scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_mewmew"), infoscale, infoscale)
            }
            else
            {
                draw_set_color(c_yellow)
                scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_mewmew"), infoscale, infoscale)
            }
        }
        draw_set_color(c_white)
        mon = shyren
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_shyren"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_ShyrenStatus != ShyrenStatus.Encouraged)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_shyren"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, (mon.y + 210), scr_gettext("castroll_yellow_shyren"), 1, 1)
        }
        if (view_yview_get(0) > 1220 && view_yview_get(0) < 1240)
            exper = 0
        if (view_yview_get(0) > 1240)
        {
            vol -= 0.02
            caster_set_volume(all, vol)
            exper += 0.2
            view_yview_set(0, (view_yview_get(0) + exper))
            if (view_yview_get(0) > (shyren.y + 300))
            {
                do_room_goto = true
                do_room_goto_target = room_end_metta
            }
        }
    }
    if (global.cast_type == 3)
    {
        g = 0
        draw_set_alpha(1)
        scr_setfont(fnt_maintext)
        draw_set_color(c_white)
        mon = vulkin
        scr_drawtext_centered_scaled(col1_x, ((mon.y - 70) - 100), scr_gettext("castroll_name_vulkin"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, ((mon.y - 30) - 100), scr_gettext("castroll_by_magnolia_porter"), 1, 1)
        if (FL_SparedVulkin == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, (((mon.y + 210) - 100) + info_yofs), scr_gettext("castroll_white_vulkin"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, (((mon.y + 210) - 100) + info_yofs), scr_gettext("castroll_yellow_vulkin"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = tsunderplane
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_tsunderplane"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedTsunderplane == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_tsunderplane"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            var tsunderplane_y_infoscale_x = 1.5
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_tsunderplane"), tsunderplane_y_infoscale_x, infoscale)
        }
        draw_set_color(c_white)
        mon = pyrope
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_pyrope"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedPyrope == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_pyrope"), infoscale, infoscale)
        }
        else
        {
            var pyrope_y_infoscale_x = 1.5
            var pyrope_y_infoscale_y = 1.5
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_pyrope"), pyrope_y_infoscale_x, pyrope_y_infoscale_y)
        }
        draw_set_color(c_white)
        mon = muffet
        scr_drawtext_centered_scaled(col2_x, (mon.y - 70), scr_gettext("castroll_name_muffet"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 30), scr_gettext("castroll_by_michelle"), 1, 1)
        draw_set_color(c_yellow)
        scr_drawtext_centered_scaled(col2_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_muffet"), infoscale, infoscale)
        draw_set_color(c_white)
        mon = knighta
        scr_drawtext_centered_scaled(320, (mon.y - 70), scr_gettext("castroll_name_royalguards"), namescale, namescale)
        scr_drawtext_centered_scaled(320, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        draw_set_color(c_yellow)
        scr_drawtext_centered_scaled(320, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_royalguards"), infoscale, infoscale)
        draw_set_color(c_white)
        mon = finalfroggit
        var ff_namescale_x = 2
        if (global.language == "ja")
            ff_namescale_x = 2
        scr_drawtext_centered_scaled(col1_x, (mon.y - 90), scr_gettext("castroll_name_finalfroggit"), ff_namescale_x, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 50), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedFinalFroggit == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_finalfroggit"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_finalfroggit"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = whimsalot
        scr_drawtext_centered_scaled(col2_x, (mon.y - 90), scr_gettext("castroll_name_whimsalot"), namescale, namescale)
        scr_drawtext_centered_scaled(col2_x, (mon.y - 50), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedWhisalot == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_whimsalot"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col2_x, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_whimsalot"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = astigmatism
        scr_drawtext_centered_scaled(320, (mon.y - 70), scr_gettext("castroll_name_astigmatism"), namescale, namescale)
        scr_drawtext_centered_scaled(320, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedAstigmatism == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(320, ((mon.y + 110) + info_yofs), scr_gettext("castroll_white_astigmatism"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(320, ((mon.y + 110) + info_yofs), scr_gettext("castroll_yellow_astigmatism"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = madjick
        scr_drawtext_centered_scaled(col1_x, (mon.y - 70), scr_gettext("castroll_name_madjick"), namescale, namescale)
        scr_drawtext_centered_scaled(col1_x, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedMadjick == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_madjick"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(col1_x, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_madjick"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = knightknight
        scr_drawtext_centered_scaled(460, (mon.y - 70), scr_gettext("castroll_name_knightknight"), namescale, namescale)
        scr_drawtext_centered_scaled(460, (mon.y - 30), scr_gettext("castroll_by_toby"), 1, 1)
        if (FL_SparedFinalKnight == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(460, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_knightknight"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(460, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_knightknight"), infoscale, infoscale)
        }
        draw_set_color(c_white)
        mon = amalgamate1
        scr_drawtext_centered_scaled(320, (mon.y - 70), scr_gettext("castroll_name_amalgamates"), namescale, namescale)
        scr_drawtext_centered_scaled(320, (mon.y - 30), scr_gettext("castroll_extra_amalgamates"), 1, 1)
        if (FL_SparedEndogenny == false)
        {
            draw_set_color(c_white)
            scr_drawtext_centered_scaled(320, ((mon.y + 210) + info_yofs), scr_gettext("castroll_white_amalgamates"), infoscale, infoscale)
        }
        else
        {
            draw_set_color(c_yellow)
            scr_drawtext_centered_scaled(320, ((mon.y + 210) + info_yofs), scr_gettext("castroll_yellow_amalgamates"), infoscale, infoscale)
        }
        if (view_yview_get(0) > 3000 && view_yview_get(0) < 3040)
            exper = 0
        if (view_yview_get(0) > 3040)
        {
            exper += 0.5
            view_xview_set(0, (view_xview_get(0) + exper))
            vol -= 0.02
            caster_set_volume(all, vol)
            if (view_xview_get(0) > 640)
            {
                do_room_goto = true
                do_room_goto_target = room_end_school
            }
        }
    }
}
