if (menu == 1 || menu == 2)
{
    var wdiff = (12 - global.wstrength)
    var adiff = (12 - global.adef)
    var wdiffs = string(wdiff)
    if (wdiff >= 0)
        wdiffs = ("+" + wdiffs)
    var adiffs = string(adiff)
    if (adiff >= 0)
        adiffs = ("+" + adiffs)
    var soldout = 0
    if (menuc[1] == 1)
        soldout = FL_GotGun != 0
    if (menuc[1] == 2)
        soldout = FL_GotCowboyHat != 0
    if (menuc[1] == 3)
        soldout = FL_GotMysteryKey != 0
    if (menuc[1] >= 0 && menuc[1] <= 3)
    {
        if soldout
            scr_shop_draw_infobox(minimenuy, scr_gettext("shop3_itemdesc_soldout"))
        else
            scr_shop_draw_infobox(minimenuy, scr_gettext(("shop3_itemdesc_" + string(item[menuc[1]])), wdiffs, adiffs))
    }
}
scr_shop_draw_window(menu < 4)
if (menu == 0)
{
    var divider_x = 105
    if (global.language == "ja")
        divider_x = 111
    draw_set_color(c_white)
    ossafe_fill_rectangle(divider_x, 124, (divider_x + 2), 236)
}
else if (menu == 4)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle(157, 124, 159, 236)
}
draw_set_color(c_white)
if (menu == 0)
{
    sell = 0
    selling = 0
    sidemessage = 0
    menuc[1] = 0
    menuc[2] = 0
    menuc[3] = 0
    menuc[4] = 0
    if (instance_exists(OBJ_WRITER) == false)
    {
        global.msg[0] = scr_gettext("obj_shop3_357")
        if (mainmessage == 0)
            global.msg[0] = scr_gettext("obj_shop3_358")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_shop3_359")
        var bratty_x = -10
        var catty_x = 93
        if (global.language == "ja")
        {
            bratty_x -= 3
            catty_x += 4
        }
        brattywriter = instance_create(bratty_x, 110, OBJ_WRITER)
        brattywriter.mycolor = 13941759
        global.msg[0] = scr_gettext("obj_shop3_362")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_shop3_363")
        cattywriter = instance_create(catty_x, 110, OBJ_WRITER)
        cattywriter.mycolor = 16759772
        catty.face = 0
        bratty.face = 0
        catty.armexp = 0
        bratty.armexp = 0
        global.faceemotion = 0
        FL_AnimationIndex = 0
    }
    else if control_check_pressed(CancelButton)
    {
        with (OBJ_WRITER)
        {
            if (halt == 0)
                stringpos = string_length(originalstring)
            control_clear(CancelButton)
        }
    }
    menumax = 3
    scr_shop_draw_topmenu(murder != 0)
    if control_check_pressed(InteractButton)
    {
        OBJ_WRITER.dfy = 1
        control_clear(InteractButton)
        if (menuc[0] == 0)
            menu = 1
        if (menuc[0] == 1)
        {
            sell = 1
            menu = 4
        }
        if (menuc[0] == 2)
        {
            if (murder == 0)
                menu = 3
            else
            {
                sell = 7
                menu = 4
            }
        }
        if (menuc[0] == 3)
        {
            sell = 2
            menu = 4
        }
    }
}
if (menu == 1 || menu == 2)
{
    for (var i = 0; i < 4; i++)
    {
        soldout = 0
        if (i == 1)
            soldout = FL_GotGun != 0
        if (i == 2)
            soldout = FL_GotCowboyHat != 0
        if (i == 3)
            soldout = FL_GotMysteryKey != 0
        if soldout
        {
            draw_set_color(c_gray)
            draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_soldout")))
            draw_set_color(c_white)
        }
        else
        {
            var pad = "  "
            if (global.language == "ja")
                pad = " "
            if (itemcost[i] < 100)
            {
                if (murder == 1)
                    var cost = (pad + "00")
                else
                    cost = (pad + string(itemcost[i]))
            }
            else if (murder == 1)
                cost = "000"
            else
                cost = string(itemcost[i])
            draw_text(30, (130 + (20 * i)), string_hash_to_newline(scr_gettext("shop_buy_list", cost, scr_gettext(("item_name_" + string(item[i]))))))
        }
    }
    draw_text(30, 210, string_hash_to_newline(scr_gettext("shop_exit_submenu")))
    if (menu == 1)
    {
        menumax = 4
        if (instance_exists(OBJ_WRITER) == false)
        {
            if (murder == 0)
            {
                if (sidemessage == 0)
                    global.msg[0] = scr_gettext("obj_shop3_474")
                if (sidemessage == 1)
                    global.msg[0] = scr_gettext("obj_shop3_475")
                if (sidemessage == 2)
                    global.msg[0] = scr_gettext("obj_shop3_476")
                if (sidemessage == 3)
                    global.msg[0] = scr_gettext("obj_shop3_477")
                if (sidemessage == 4)
                    global.msg[0] = scr_gettext("obj_shop3_478")
                if (sidemessage == 5)
                    global.msg[0] = scr_gettext("obj_shop3_479")
            }
            else
                global.msg[0] = scr_gettext("obj_shop3_481")
            cattywriter = instance_create(210, 110, OBJ_WRITER)
            cattywriter.mycolor = 16759772
        }
        var hearty = 134
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, 15, (hearty + (menuc[1] * 20)))
        if control_check_pressed(InteractButton)
        {
            soldout = 0
            if (menuc[1] == 1 && FL_GotGun == 1)
                soldout = 1
            if (menuc[1] == 2 && FL_GotCowboyHat == 1)
                soldout = 1
            if (menuc[1] == 3 && FL_GotMysteryKey == 1)
                soldout = 1
            if (soldout == 0)
                menu = 2
            else
                sidemessage = 5
            OBJ_WRITER.dfy = 1
            if (menuc[1] == menumax)
                menu = 0
        }
        else if control_check_pressed(CancelButton)
        {
            menu = 0
            OBJ_WRITER.dfy = 1
        }
        if (menu == 2)
            control_clear(InteractButton)
        menuc[2] = 0
    }
    if (menu == 2)
    {
        var heartx = (scr_shop_divider_pos() + 15)
        var textx = (heartx + 5)
        if (global.language == "ja")
            textx -= 8
        menumax = 1
        draw_text(textx, 130, string_hash_to_newline(scr_gettext("shop_buy_prompt1", string(itemcost[menuc[1]]))))
        draw_text(textx, 145, string_hash_to_newline(scr_gettext("shop_buy_prompt2", string(itemcost[menuc[1]]))))
        draw_text((heartx + 15), 170, string_hash_to_newline(scr_gettext("yes")))
        draw_text((heartx + 15), 185, string_hash_to_newline(scr_gettext("no")))
        hearty = 174
        if (global.language == "ja")
            hearty -= 2
        draw_sprite(spr_heartsmall, 0, heartx, (hearty + (menuc[2] * 15)))
        if control_check_pressed(CancelButton)
        {
            menu = 1
            control_clear(CancelButton)
            sidemessage = 2
        }
        else if control_check_pressed(InteractButton)
        {
            control_clear(InteractButton)
            if (menuc[2] == 0)
            {
                scr_cost(itemcost[menuc[1]])
                if (afford == 1)
                {
                    scr_itemget(item[menuc[1]])
                    if (noroom == 0)
                    {
                        global.gold -= itemcost[menuc[1]]
                        snd_play(snd_buyitem)
                        sidemessage = 1
                        if (menuc[1] == 1)
                            FL_GotGun = 1
                        if (menuc[1] == 2)
                            FL_GotCowboyHat = 1
                        if (menuc[1] == 3)
                            FL_GotMysteryKey = 1
                    }
                    if (noroom == 1)
                        sidemessage = 4
                }
                else
                    sidemessage = 3
            }
            if (menuc[2] == 1)
                sidemessage = 2
            menu = 1
        }
    }
    if (menuc[1] != 4)
    {
        if (minimenuy > (120 - scr_shop_infobox_height()))
            minimenuy -= 3
        if (minimenuy > 55)
            minimenuy -= 2
        if (minimenuy > 80)
            minimenuy -= 4
        if (minimenuy > 100)
            minimenuy -= 5
    }
    else if (minimenuy < 120)
        minimenuy += 20
}
if (menu == 3)
{
    menumax = 4
    if (FL_TruePacifist != true)
    {
        if (FL_BurgerPantsGirlsConvoCounter < 2)
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop3_talk1a_title"))
        if (FL_BurgerPantsGirlsConvoCounter == 2)
            scr_shop_draw_talktitle(0, 1, scr_gettext("shop3_talk1b_title"))
        if (FL_BurgerPantsGirlsConvoCounter == 4)
            scr_shop_draw_talktitle(0, 1, scr_gettext("shop3_talk1c_title"))
        if (FL_BurgerPantsGirlsConvoCounter == 5)
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop3_talk1a_title"))
        if (FL_BurgerPantsGirlsConvoCounter == 6)
            scr_shop_draw_talktitle(0, 1, scr_gettext("shop3_talk1d_title"))
        if (FL_BurgerPantsGirlsConvoCounter == 7)
            scr_shop_draw_talktitle(0, 1, scr_gettext("shop3_talk1e_title"))
        if (FL_BurgerPantsGirlsConvoCounter >= 8)
            scr_shop_draw_talktitle(0, 0, scr_gettext("shop3_talk1a_title"))
        if (FL_BrattyCattyConvoCounter == 0)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop3_talk2a_title"))
        if (FL_BrattyCattyConvoCounter == 1)
            scr_shop_draw_talktitle(1, 1, scr_gettext("shop3_talk2b_title"))
        if (FL_BrattyCattyConvoCounter == 2)
            scr_shop_draw_talktitle(1, 1, scr_gettext("shop3_talk2c_title"))
        if (FL_BrattyCattyConvoCounter == 3)
            scr_shop_draw_talktitle(1, 0, scr_gettext("shop3_talk2d_title"))
        if (FL_MettatonConvoCounter == 0)
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop3_talk3a_title"))
        if (FL_MettatonConvoCounter == 1)
            scr_shop_draw_talktitle(2, 1, scr_gettext("shop3_talk3b_title"))
        if (FL_MettatonConvoCounter == 2)
        {
            draw_set_color(c_white)
            scr_shop_draw_talktitle(2, 0, scr_gettext("shop3_talk3c_title"))
            draw_set_color(c_white)
        }
        if (FL_AlphysConvoCounter == 0)
            scr_shop_draw_talktitle(3, 0, scr_gettext("shop3_talk4a_title"))
        if (FL_AlphysConvoCounter == 1)
            scr_shop_draw_talktitle(3, 1, scr_gettext("shop3_talk4b_title"))
        if (FL_AlphysConvoCounter == 2)
            scr_shop_draw_talktitle(3, 1, scr_gettext("shop3_talk4c_title"))
        if (FL_AlphysConvoCounter == 3)
        {
            draw_set_color(c_white)
            scr_shop_draw_talktitle(3, 0, scr_gettext("shop3_talk4d_title"))
            draw_set_color(c_white)
        }
    }
    if (FL_TruePacifist == true)
    {
        scr_shop_draw_talktitle(0, 0, scr_gettext("shop3_talk5_title"))
        scr_shop_draw_talktitle(1, 0, scr_gettext("shop3_talk6_title"))
        scr_shop_draw_talktitle(2, 0, scr_gettext("shop3_talk7_title"))
        scr_shop_draw_talktitle(3, 0, scr_gettext("shop3_talk8_title"))
    }
    scr_shop_draw_talkmenu()
    if (instance_exists(OBJ_WRITER) == false)
    {
        global.faceemotion = 0
        FL_AnimationIndex = 0
        catty.face = 0
        bratty.face = 0
        catty.armexp = 0
        bratty.armexp = 0
        global.msg[0] = scr_gettext("obj_shop3_599")
        var writerx = 210
        if (global.language == "ja")
            writerx += 2
        brattywriter = instance_create(writerx, 110, OBJ_WRITER)
        brattywriter.mycolor = 13941759
    }
    if control_check_pressed(InteractButton)
    {
        OBJ_WRITER.dfy = 1
        if (menuc[3] < menumax)
        {
            sell = (menuc[3] + 3)
            control_clear(InteractButton)
            menu = 4
        }
        else
            menu = 0
    }
    else if control_check_pressed(CancelButton)
    {
        control_clear(CancelButton)
        menu = 0
        OBJ_WRITER.dfy = 1
    }
}
if (menu < 4)
    scr_shop_draw_status()
if (menu == 4)
{
    if (sell == 0)
        menu = 0
    if (instance_exists(OBJ_WRITER) == false && selling == 0)
    {
        if (sell == 1)
        {
            if (murder == 0)
            {
                scr_itemcheck(Items.Glamburger)
                if (haveit == false)
                {
                    global.msg[0] = scr_gettext("obj_shop3_650")
                    event_user(2)
                    con = 75
                }
                if (haveit == true)
                {
                    con = 81
                    global.msg[0] = scr_gettext("obj_shop3_658")
                    event_user(2)
                }
            }
            else if (FL_RobbedCore == false)
            {
                FL_RobbedCore = true
                global.gold += 5
                global.msg[0] = scr_gettext("obj_shop3_668")
                event_user(2)
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop3_673")
                event_user(2)
            }
        }
        if (sell == 2)
        {
            if (murder == 0)
            {
                global.msg[0] = scr_gettext("obj_shop3_683")
                event_user(2)
                global.msg[0] = scr_gettext("obj_shop3_685")
                event_user(3)
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop3_690")
                event_user(2)
                global.msg[0] = scr_gettext("obj_shop3_692")
                event_user(3)
            }
        }
        if (sell == 3)
        {
            if (FL_BurgerPantsGirlsConvoCounter != 2 && FL_BurgerPantsGirlsConvoCounter != 4 && FL_BurgerPantsGirlsConvoCounter != 6 && FL_BurgerPantsGirlsConvoCounter != 7 && FL_TruePacifist != true)
            {
                con = 4
                global.msg[0] = scr_gettext("obj_shop3_710")
                brattywriter = instance_create(-10, 110, OBJ_WRITER)
                brattywriter.mycolor = 13941759
                global.msg[0] = scr_gettext("obj_shop3_713")
                cattywriter = instance_create(145, 110, OBJ_WRITER)
                cattywriter.mycolor = 16759772
            }
            else if (FL_TruePacifist == false)
            {
                if (FL_BurgerPantsGirlsConvoCounter == 7)
                {
                    FL_BurgerPantsGirlsConvoCounter = 8
                    global.msg[0] = scr_gettext("obj_shop3_726")
                    global.msg[1] = scr_gettext("obj_shop3_727")
                    global.msg[2] = scr_gettext("obj_shop3_728")
                    event_user(2)
                    con = 160
                }
                if (FL_BurgerPantsGirlsConvoCounter == 6)
                {
                    FL_BurgerPantsGirlsConvoCounter = 7
                    global.msg[0] = scr_gettext("obj_shop3_736")
                    event_user(2)
                    con = 140
                }
                if (FL_BurgerPantsGirlsConvoCounter == 4)
                {
                    FL_BurgerPantsGirlsConvoCounter = 5
                    global.msg[0] = scr_gettext("obj_shop3_745")
                    event_user(2)
                    con = 120
                }
                if (FL_BurgerPantsGirlsConvoCounter == 2)
                {
                    FL_BurgerPantsGirlsConvoCounter = 4
                    global.msg[0] = scr_gettext("obj_shop3_754")
                    event_user(2)
                    con = 110
                }
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop3_763")
                event_user(2)
                con = 170
            }
        }
        if (sell == 4)
        {
            if (FL_TruePacifist == false)
            {
                if (FL_BrattyCattyConvoCounter == 2 || FL_BrattyCattyConvoCounter == 3)
                {
                    global.msg[0] = scr_gettext("obj_shop3_778")
                    global.msg[1] = scr_gettext("obj_shop3_779")
                    event_user(2)
                    con = 22
                }
                if (FL_BrattyCattyConvoCounter == 1)
                {
                    global.msg[0] = scr_gettext("obj_shop3_788")
                    event_user(2)
                    con = 16
                }
                if (FL_BrattyCattyConvoCounter == 0)
                {
                    con = 10
                    global.msg[0] = scr_gettext("obj_shop3_798")
                    event_user(2)
                }
                if (FL_BrattyCattyConvoCounter == 2)
                    FL_BrattyCattyConvoCounter = 3
                if (FL_BrattyCattyConvoCounter == 1)
                    FL_BrattyCattyConvoCounter = 2
                if (FL_BrattyCattyConvoCounter == 0)
                    FL_BrattyCattyConvoCounter = 1
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop3_807")
                global.msg[1] = scr_gettext("obj_shop3_808")
                global.msg[2] = scr_gettext("obj_shop3_809")
                global.msg[3] = scr_gettext("obj_shop3_810")
                event_user(2)
                con = 180
            }
        }
        if (sell == 5)
        {
            if (FL_TruePacifist == false)
            {
                if (FL_MettatonConvoCounter == 1)
                {
                    global.msg[0] = scr_gettext("obj_shop3_822")
                    event_user(2)
                    con = 40
                }
                if (FL_MettatonConvoCounter == 0 || FL_MettatonConvoCounter == 2)
                {
                    global.msg[0] = scr_gettext("obj_shop3_829")
                    global.msg[1] = scr_gettext("obj_shop3_830")
                    global.msg[2] = scr_gettext("obj_shop3_831")
                    event_user(2)
                    global.msg[0] = scr_gettext("obj_shop3_833")
                    global.msg[1] = scr_gettext("obj_shop3_834")
                    global.msg[2] = scr_gettext("obj_shop3_835")
                    global.msg[3] = scr_gettext("obj_shop3_836")
                    event_user(3)
                    con = 900
                }
                if (FL_MettatonConvoCounter == 1)
                    FL_MettatonConvoCounter = 2
                if (FL_MettatonConvoCounter == 0)
                    FL_MettatonConvoCounter = 1
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop3_845")
                event_user(2)
                con = 190
            }
        }
        if (sell == 6)
        {
            if (FL_TruePacifist == false)
            {
                if (FL_AlphysConvoCounter == 0)
                {
                    global.msg[0] = scr_gettext("obj_shop3_859")
                    global.msg[1] = scr_gettext("obj_shop3_860")
                    event_user(2)
                    global.msg[0] = scr_gettext("obj_shop3_862")
                    global.msg[1] = scr_gettext("obj_shop3_863")
                    event_user(3)
                    con = 50
                }
                if (FL_AlphysConvoCounter == 1)
                {
                    global.msg[0] = scr_gettext("obj_shop3_870")
                    event_user(2)
                    con = 60
                }
                if (FL_AlphysConvoCounter == 2 || FL_AlphysConvoCounter == 3)
                {
                    global.msg[0] = scr_gettext("obj_shop3_879")
                    global.msg[1] = scr_gettext("obj_shop3_880")
                    global.msg[2] = scr_gettext("obj_shop3_881")
                    global.msg[3] = scr_gettext("obj_shop3_882")
                    event_user(2)
                    global.msg[0] = scr_gettext("obj_shop3_884")
                    global.msg[1] = scr_gettext("obj_shop3_885")
                    global.msg[2] = scr_gettext("obj_shop3_886")
                    global.msg[3] = scr_gettext("obj_shop3_887")
                    event_user(3)
                    con = 999
                }
                if (FL_AlphysConvoCounter == 2)
                    FL_AlphysConvoCounter = 3
                if (FL_AlphysConvoCounter == 1)
                    FL_AlphysConvoCounter = 2
                if (FL_AlphysConvoCounter == 0)
                    FL_AlphysConvoCounter = 1
            }
            else
            {
                global.msg[0] = scr_gettext("obj_shop3_898")
                global.msg[1] = scr_gettext("obj_shop3_899")
                event_user(2)
                global.msg[0] = scr_gettext("obj_shop3_901")
                global.msg[1] = scr_gettext("obj_shop3_902")
                event_user(3)
                con = 200
            }
        }
        if (sell == 7)
        {
            global.msg[0] = scr_gettext("obj_shop3_910")
            event_user(2)
            global.msg[0] = scr_gettext("obj_shop3_912")
            event_user(3)
            con = 250
        }
        if (instance_exists(OBJ_WRITER) == false)
            instance_create(10, 110, OBJ_WRITER)
        selling = 1
    }
    if (con == 4 && brattywriter.halt != false && cattywriter.halt != false && control_check_pressed(InteractButton))
    {
        control_clear(InteractButton)
        with (brattywriter)
            instance_destroy()
        with (cattywriter)
            instance_destroy()
        caster_pause(shopmus)
        mew = caster_load("music/myemeow.ogg")
        selling = 4
        con = 5
        global.faceemotion = 7
        FL_AnimationIndex = 5
        alarm[4] = 30
    }
    if (con == 6 && instance_exists(OBJ_WRITER) == false)
    {
        caster_play(mew, 0.5, 0.9)
        selling = 4
        con = 7
        global.faceemotion = 1
        FL_AnimationIndex = 1
        alarm[4] = 50
    }
    if (con == 8)
    {
        caster_free(mew)
        selling = 1
        con = 0
        caster_resume(shopmus)
    }
    if (con == 10)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_959")
            event_user(3)
            con = 11
        }
    }
    if (con == 11)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_970")
            event_user(2)
            con = 12
        }
    }
    if (con == 12)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_980")
            event_user(3)
            con = 13
        }
    }
    if (con == 13)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_991")
            global.msg[1] = scr_gettext("obj_shop3_992")
            event_user(2)
            global.msg[0] = scr_gettext("obj_shop3_994")
            global.msg[1] = scr_gettext("obj_shop3_995")
            event_user(3)
            con = 998
        }
    }
    if (con == 16)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            FL_AnimationIndex = 2
            global.msg[0] = scr_gettext("obj_shop3_1014")
            event_user(3)
            con = 17
        }
    }
    if (con == 17 && instance_exists(cattywriter) == false)
    {
        caster_pause(shopmus)
        with (brattywriter)
            instance_destroy()
        global.faceemotion = 5
        FL_AnimationIndex = 5
        con = 18
        alarm[4] = 70
    }
    if (con == 19)
    {
        caster_resume(shopmus)
        global.msg[0] = scr_gettext("obj_shop3_1033")
        event_user(2)
        global.msg[0] = scr_gettext("obj_shop3_1035")
        event_user(3)
        con = 20
    }
    if (con == 20)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            con = 0
            selling = 1
        }
    }
    if (con == 22)
    {
        selling = 4
        if (instance_exists(brattywriter) == false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1055")
            global.msg[1] = scr_gettext("obj_shop3_1056")
            event_user(2)
            global.msg[0] = scr_gettext("obj_shop3_1058")
            global.msg[1] = scr_gettext("obj_shop3_1059")
            event_user(3)
            selling = 1
            con = 130
        }
    }
    if (con == 40)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1071")
            event_user(3)
            con = 41
        }
    }
    if (con == 41)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1082")
            event_user(2)
            con = 42
        }
    }
    if (con == 42)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1093")
            event_user(3)
            con = 43
        }
    }
    if (con == 43)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1104")
            event_user(2)
            con = 44
        }
    }
    if (con == 44)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1115")
            event_user(3)
            con = 46
        }
    }
    if (con == 46)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1126")
            event_user(2)
            con = 47
        }
    }
    if (con == 47)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1137")
            event_user(3)
            con = 48
        }
    }
    if (con == 48 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 50)
    {
        selling = 4
        if (brattywriter.halt != false && cattywriter.halt != false && control_check_pressed(InteractButton))
        {
            control_clear(InteractButton)
            with (brattywriter)
                instance_destroy()
            with (cattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1156")
            event_user(2)
            con = 51
        }
    }
    if (con == 51)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1167")
            event_user(3)
            con = 52
        }
    }
    if (con == 52)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1179")
            event_user(2)
            con = 53
        }
    }
    if (con == 53)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1189")
            event_user(3)
            con = 54
        }
    }
    if (con == 54)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1201")
            event_user(2)
            con = 55
        }
    }
    if (con == 55)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1211")
            event_user(3)
            con = 56
        }
    }
    if (con == 56 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        selling = 1
        con = 0
    }
    if (con == 60)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1231")
            event_user(3)
            con = 61
        }
    }
    if (con == 61)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1243")
            event_user(2)
            con = 62
        }
    }
    if (con == 62)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1253")
            event_user(3)
            con = 62.1
        }
    }
    if (con == 62.1)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1265")
            event_user(2)
            con = 62.2
        }
    }
    if (con == 62.2)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1275")
            event_user(3)
            con = 62.3
        }
    }
    if (con == 62.3)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1288")
            event_user(2)
            con = 62.4
        }
    }
    if (con == 62.4)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1298")
            global.msg[1] = scr_gettext("obj_shop3_1299")
            event_user(3)
            con = 65
        }
    }
    if (con == 65)
    {
        if instance_exists(cattywriter)
        {
            if (cattywriter.stringno == 1)
            {
                with (brattywriter)
                    instance_destroy()
            }
        }
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1319")
            event_user(2)
            con = 66
        }
    }
    if (con == 66)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1329")
            event_user(3)
            con = 67
        }
    }
    if (con == 67)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1341")
            event_user(2)
            con = 68
        }
    }
    if (con == 68)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1351")
            event_user(3)
            con = 70
        }
    }
    if (con == 70 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 75)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_1371")
            event_user(3)
            con = 76
        }
    }
    if (con == 76)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1383")
            event_user(2)
            con = 77
        }
    }
    if (con == 77)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1395")
            event_user(3)
            con = 78
        }
    }
    if (con == 78 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 81)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_1415")
            event_user(3)
            con = 83
        }
    }
    if (con == 83)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1427")
            event_user(2)
            con = 84
        }
    }
    if (con == 84)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1439")
            event_user(3)
            con = 85
        }
    }
    if (con == 85)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1451")
            event_user(2)
            con = 86
        }
    }
    if (con == 86)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1463")
            event_user(3)
            con = 87
        }
    }
    if (con == 87 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 110)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1484")
            event_user(3)
            con = 111
        }
    }
    if (con == 111 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 112
        FL_AnimationIndex = 2
        global.msg[0] = scr_gettext("obj_shop3_1495")
        event_user(3)
    }
    if (con == 112)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1504")
            event_user(2)
            con = 113
        }
    }
    if (con == 113)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            FL_AnimationIndex = 1
            global.msg[0] = scr_gettext("obj_shop3_1517")
            event_user(3)
            con = 114
        }
    }
    if (con == 114 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 120)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1537")
            event_user(3)
            con = 121
        }
    }
    if (con == 121)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1549")
            event_user(2)
            con = 122
        }
    }
    if (con == 122)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1561")
            event_user(3)
            con = 123
        }
    }
    if (con == 123)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1573")
            event_user(2)
            con = 124
        }
    }
    if (con == 124)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1586")
            event_user(3)
            con = 126
        }
    }
    if (con == 126)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1598")
            event_user(2)
            con = 127
        }
    }
    if (con == 127)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1610")
            event_user(3)
            con = 128
        }
    }
    if (con == 128)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.faceemotion = 1
            FL_BurgerPantsGirlsConvoCounter = 5
            global.msg[0] = scr_gettext("obj_shop3_1624")
            event_user(2)
            con = 129
        }
    }
    if (con == 129 && instance_exists(brattywriter) == false)
    {
        with (cattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 130 && instance_exists(cattywriter) == false)
    {
        with (brattywriter)
            instance_destroy()
        con = 0
        selling = 1
    }
    if (con == 140)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1644")
            event_user(3)
            con = 141
        }
    }
    if (con == 141)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.faceemotion = 7
            global.msg[0] = scr_gettext("obj_shop3_1657")
            event_user(2)
            con = 142
        }
    }
    if (con == 142)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1669")
            event_user(3)
            con = 143
        }
    }
    if (con == 143)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.faceemotion = 7
            global.msg[0] = scr_gettext("obj_shop3_1682")
            event_user(2)
            con = 145
        }
    }
    if (con == 145)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1694")
            event_user(3)
            con = 114
        }
    }
    if (con == 160)
    {
        selling = 4
        if (instance_exists(brattywriter) == false)
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_1707")
            global.msg[1] = scr_gettext("obj_shop3_1708")
            global.msg[2] = scr_gettext("obj_shop3_1709")
            global.msg[3] = scr_gettext("obj_shop3_1710")
            global.msg[4] = scr_gettext("obj_shop3_1711")
            event_user(3)
            con = 161
        }
    }
    if (con == 161)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.faceemotion = 8
            global.msg[0] = scr_gettext("obj_shop3_1724")
            event_user(2)
            con = 162
        }
    }
    if (con == 162)
    {
        selling = 4
        if (instance_exists(brattywriter) == false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1735")
            global.msg[1] = scr_gettext("obj_shop3_1736")
            event_user(3)
            con = 163
        }
    }
    if (con == 163)
    {
        selling = 4
        if (instance_exists(cattywriter) && cattywriter.halt != false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1749")
            event_user(2)
            con = 129
        }
    }
    if (con == 170)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1761")
            event_user(3)
            con = 171
        }
    }
    if (con == 171)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1773")
            event_user(2)
            con = 172
        }
    }
    if (con == 172)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1785")
            event_user(3)
            con = 173
        }
    }
    if (con == 173)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1797")
            event_user(2)
            con = 174
        }
    }
    if (con == 174)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1809")
            event_user(3)
            con = 114
        }
    }
    if (con == 180)
    {
        selling = 4
        if (!instance_exists(brattywriter))
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_1822")
            event_user(3)
            con = 181
        }
    }
    if (con == 181)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1834")
            global.msg[1] = scr_gettext("obj_shop3_1835")
            event_user(2)
            con = 182
        }
    }
    if (con == 182)
    {
        selling = 4
        if (!instance_exists(brattywriter))
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_1847")
            global.msg[1] = scr_gettext("obj_shop3_1848")
            event_user(3)
            con = 183
        }
    }
    if (con == 183)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            global.faceemotion = 7
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1861")
            global.msg[1] = scr_gettext("obj_shop3_1862")
            event_user(2)
            con = 184
        }
    }
    if (con == 184)
    {
        selling = 4
        if (!instance_exists(brattywriter))
        {
            global.msg[0] = scr_gettext("obj_shop3_1873")
            event_user(3)
            con = 114
        }
    }
    if (con == 190)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_1886")
            event_user(3)
            con = 191
        }
    }
    if (con == 191)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            global.faceemotion = 7
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1899")
            event_user(2)
            con = 192
        }
    }
    if (con == 192)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_1910")
            global.msg[1] = scr_gettext("obj_shop3_1911")
            event_user(3)
            con = 193
        }
    }
    if (con == 193)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1924")
            event_user(2)
            con = 194
        }
    }
    if (con == 194)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            FL_AnimationIndex = 2
            global.msg[0] = scr_gettext("obj_shop3_1936")
            event_user(3)
            con = 195
        }
    }
    if (con == 195)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_1949")
            event_user(2)
            con = 129
        }
    }
    if (con == 200 && brattywriter.halt != false && cattywriter.halt != false && control_check_pressed(InteractButton))
    {
        control_clear(InteractButton)
        selling = 4
        caster_pause(global.currentsong)
        with (cattywriter)
            instance_destroy()
        with (brattywriter)
            instance_destroy()
        global.faceemotion = 8
        FL_AnimationIndex = 0
        con = 201
        alarm[4] = 70
    }
    if (con == 202)
    {
        selling = 4
        caster_resume(global.currentsong)
        FL_AnimationIndex = 1
        global.msg[0] = scr_gettext("obj_shop3_1974")
        event_user(3)
        con = 203
    }
    if (con == 203)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.faceemotion = 1
            global.msg[0] = scr_gettext("obj_shop3_1987")
            global.msg[1] = scr_gettext("obj_shop3_1988")
            global.msg[2] = scr_gettext("obj_shop3_1989")
            event_user(2)
            con = 204
        }
    }
    if (con == 204)
    {
        selling = 4
        if (!instance_exists(brattywriter))
        {
            FL_AnimationIndex = 5
            global.msg[0] = scr_gettext("obj_shop3_2001")
            global.msg[1] = scr_gettext("obj_shop3_2002")
            global.msg[2] = scr_gettext("obj_shop3_2003")
            global.msg[3] = scr_gettext("obj_shop3_2004")
            event_user(3)
            con = 205
        }
    }
    if (con == 205)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2017")
            event_user(2)
            con = 206
        }
    }
    if (con == 206)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2028")
            event_user(3)
            con = 207
        }
    }
    if (con == 207)
    {
        selling = 4
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.faceemotion = 8
            global.msg[0] = scr_gettext("obj_shop3_2042")
            event_user(2)
            con = 208
        }
    }
    if (con == 208)
    {
        selling = 4
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2053")
            event_user(3)
            con = 114
        }
    }
    if (con == 250)
    {
        selling = 4
        if (brattywriter.halt != false && cattywriter.halt != false && control_check_pressed(InteractButton))
        {
            control_clear(InteractButton)
            with (brattywriter)
                instance_destroy()
            with (cattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2067")
            event_user(2)
            con = 251
        }
    }
    if (con == 251)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2077")
            event_user(3)
            con = 252
        }
    }
    if (con == 252)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2088")
            event_user(2)
            con = 253
        }
    }
    if (con == 253)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2098")
            event_user(3)
            con = 254
        }
    }
    if (con == 254)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2109")
            event_user(2)
            con = 255
        }
    }
    if (con == 255)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2119")
            event_user(3)
            con = 256
        }
    }
    if (con == 256)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2131")
            event_user(2)
            con = 257
        }
    }
    if (con == 257)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2141")
            event_user(3)
            con = 258
        }
    }
    if (con == 258)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2152")
            event_user(2)
            con = 259
        }
    }
    if (con == 259)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2162")
            event_user(3)
            con = 260
        }
    }
    if (con == 260)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2174")
            event_user(2)
            con = 261
        }
    }
    if (con == 261)
    {
        if (instance_exists(brattywriter) && brattywriter.halt != false)
        {
            global.msg[0] = scr_gettext("obj_shop3_2184")
            event_user(3)
            con = 262
        }
    }
    if (con == 262)
    {
        if (instance_exists(cattywriter) == false)
        {
            with (brattywriter)
                instance_destroy()
            global.msg[0] = scr_gettext("obj_shop3_2196")
            event_user(2)
            global.msg[0] = scr_gettext("obj_shop3_2198")
            event_user(3)
            con = 998
        }
    }
    if (con == 900 && brattywriter.halt != false && cattywriter.halt == 6 && control_check_pressed(InteractButton))
    {
        with (brattywriter)
            instance_destroy()
        cattywriter.halt = 1
        with (cattywriter)
            event_user(0)
        con = 901
    }
    if (con == 901 && (!instance_exists(cattywriter)))
    {
        selling = 1
        con = 0
    }
    if ((con == 998 || con == 999) && brattywriter.halt != false && cattywriter.halt != false && control_check_pressed(InteractButton))
    {
        control_clear(InteractButton)
        with (brattywriter)
            instance_destroy()
        with (cattywriter)
            instance_destroy()
        if (con == 998)
            selling = 1
        con = 0
    }
    if instance_exists(OBJ_WRITER)
    {
        if control_check_pressed(CancelButton)
        {
            with (OBJ_WRITER)
            {
                if (halt == 0)
                    stringpos = string_length(originalstring)
                control_clear(CancelButton)
            }
        }
    }
    if (selling == 1 && sell == 2 && instance_exists(OBJ_WRITER) && brattywriter.halt != false && cattywriter.halt != false && control_check_pressed(InteractButton))
    {
        control_clear(InteractButton)
        with (brattywriter)
            instance_destroy()
        with (cattywriter)
            instance_destroy()
    }
    if (selling == 1 && instance_exists(OBJ_WRITER) == false)
    {
        if (sell == 2)
        {
            selling = 2
            event_user(1)
        }
        else
        {
            if (sell == 1 || sell == 7)
                menu = 0
            else
                menu = 3
            sell = 0
            selling = 0
        }
    }
}
if keyboard_check_pressed(vk_down)
{
    menuc[menu] += 1
    if (menuc[menu] > menumax)
        menuc[menu] = 0
}
if keyboard_check_pressed(vk_up)
{
    menuc[menu] -= 1
    if (menuc[menu] < 0)
        menuc[menu] = menumax
}
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if keyboard_check_pressed(ord("G"))
        global.gold = 5000
    if keyboard_check_pressed(ord("K"))
    {
        caster_free(all)
        room_goto(room_shop4)
    }
}
