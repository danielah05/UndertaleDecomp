// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if keyboard_check_pressed(ord("Y"))
        turns -= 1
    if keyboard_check_pressed(ord("U"))
        turns += 1
    if keyboard_check_pressed(ord("I"))
        turns = 13
}
if (global.mnfight == 1)
{
    if (talked == false)
    {
        with (obj_battlecontroller)
            drawrect = 0
        if (true_battle == 1)
            event_user(2)
        blcon = instance_create(386, 36, obj_blconwdflowey)
        mycommand = round(random(100))
        global.msg[0] = "\\E0Unmewsed~/%"
        if (turns == 0)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_24")
            global.msg[1] = scr_gettext("obj_mewmew_boss_25")
            global.msg[2] = scr_gettext("obj_mewmew_boss_26")
            global.msg[3] = scr_gettext("obj_mewmew_boss_27")
            global.msg[4] = scr_gettext("obj_mewmew_boss_28")
        }
        if (turns == 1)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_32")
            global.msg[1] = scr_gettext("obj_mewmew_boss_33")
            global.msg[2] = scr_gettext("obj_mewmew_boss_34")
            if (heart_hurt_previous == 1)
            {
                if (heart_hurt_msg_con == 0)
                {
                    global.msg[0] = scr_gettext("obj_mewmew_boss_40")
                    global.msg[1] = scr_gettext("obj_mewmew_boss_41")
                    global.msg[2] = scr_gettext("obj_mewmew_boss_42")
                }
                if (heart_hurt_msg_con == 1)
                {
                    global.msg[0] = scr_gettext("obj_mewmew_boss_47")
                    global.msg[1] = scr_gettext("obj_mewmew_boss_48")
                    global.msg[2] = scr_gettext("obj_mewmew_boss_49")
                    global.msg[3] = scr_gettext("obj_mewmew_boss_50")
                }
                if (heart_hurt_msg_con <= 1)
                {
                    turns -= 1
                    hbul_turns -= 1
                }
                heart_hurt_msg_con += 1
            }
        }
        if (turns == 2)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_67")
            global.msg[1] = scr_gettext("obj_mewmew_boss_68")
        }
        if (turns == 3)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_72")
            global.msg[1] = scr_gettext("obj_mewmew_boss_73")
            global.msg[2] = scr_gettext("obj_mewmew_boss_74")
        }
        if (turns == 4)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_79")
            global.msg[1] = scr_gettext("obj_mewmew_boss_80")
        }
        if (turns == 5)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_85")
            global.msg[1] = scr_gettext("obj_mewmew_boss_86")
        }
        if (turns == 6)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_91")
            global.msg[1] = scr_gettext("obj_mewmew_boss_92")
        }
        if (turns == 7)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_97")
            global.msg[1] = scr_gettext("obj_mewmew_boss_98")
            global.msg[2] = scr_gettext("obj_mewmew_boss_99")
            global.msg[3] = scr_gettext("obj_mewmew_boss_100")
        }
        if (turns == 8)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_105")
            global.msg[1] = scr_gettext("obj_mewmew_boss_106")
        }
        if (turns == 9)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_111")
            global.msg[1] = scr_gettext("obj_mewmew_boss_112")
        }
        if (turns == 10)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_117")
            global.msg[1] = scr_gettext("obj_mewmew_boss_118")
            global.msg[2] = scr_gettext("obj_mewmew_boss_119")
        }
        if (turns == 11)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_124")
            global.msg[1] = scr_gettext("obj_mewmew_boss_125")
            global.msg[2] = scr_gettext("obj_mewmew_boss_126")
            global.msg[3] = scr_gettext("obj_mewmew_boss_127")
        }
        if (turns == 12)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_132")
            global.msg[1] = scr_gettext("obj_mewmew_boss_133")
            global.msg[2] = scr_gettext("obj_mewmew_boss_134")
        }
        if (turns == 13)
            global.msg[0] = scr_gettext("obj_mewmew_boss_139")
        if (turns == 14)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_146")
            global.msg[1] = scr_gettext("obj_mewmew_boss_147")
            global.msg[2] = scr_gettext("obj_mewmew_boss_148")
            global.msg[3] = scr_gettext("obj_mewmew_boss_149")
        }
        if (turns == 15)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_154")
            global.msg[1] = scr_gettext("obj_mewmew_boss_155")
            global.msg[2] = scr_gettext("obj_mewmew_boss_156")
        }
        if (turns == 16)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_161")
            global.msg[1] = scr_gettext("obj_mewmew_boss_162")
            global.msg[2] = scr_gettext("obj_mewmew_boss_163")
        }
        if (true_battle == 2)
            global.msg[0] = scr_gettext("obj_mewmew_boss_168")
        if (true_battle == 3)
            global.msg[0] = scr_gettext("obj_mewmew_boss_173")
        global.typer = 33
        blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
        if (true_battle == 0)
        {
            with (blcon)
                instance_destroy()
            with (blconwd)
                instance_destroy()
        }
        talked = true
        global.heard = 0
    }
}
if (talked == true)
{
    donequal = 0
    if (true_battle == 0 || true_battle >= 2)
    {
        if (!instance_exists(blconwd))
            donequal = 1
    }
    if (true_battle == 1 && (!instance_exists(blconwd)) && border == 1)
        donequal = 1
    if (donequal == 1)
    {
        with (blcon)
            instance_destroy()
        talked = false
        whatiheard = -1
        global.mnfight = 2
    }
}
if (global.hurtanim[myself] == 1)
{
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
    hit_prev = 1
}
if (global.hurtanim[myself] == 2)
{
    global.myfight = 0
    global.mnfight = 1
    global.hurtanim[myself] = 0
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        global.turntimer = 999
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_mewmew_boss_238")
        if (mycommand >= 20)
            global.msg[0] = scr_gettext("obj_mewmew_boss_239")
        if (mycommand >= 40)
            global.msg[0] = scr_gettext("obj_mewmew_boss_240")
        if (mycommand >= 60)
            global.msg[0] = scr_gettext("obj_mewmew_boss_241")
        if (mycommand >= 80)
            global.msg[0] = scr_gettext("obj_mewmew_boss_242")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_mewmew_boss_243")
        if (true_battle == 2 || true_battle == 3)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_246")
            global.turntimer = -1
            if (true_battle == 3)
                global.msg[0] = scr_gettext("obj_mewmew_boss_248")
        }
        if (true_battle == 0)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_252")
            if (mycommand >= 90)
                global.msg[0] = scr_gettext("obj_mewmew_boss_243")
            global.turntimer = -1
        }
        if (true_battle == 1)
        {
            bordercon = 1
            specturn = 0
            if (turns == 6)
                specturn = 1
            if (turns == 11)
                specturn = 2
            if (turns == 14)
                specturn = 3
            if (specturn == 0)
            {
                obj_mewmew_body.pattern = hbul_turns
                with (obj_mewmew_body)
                    event_user(0)
            }
            else
            {
                obj_mewmew_body.pattern = turns
                with (obj_mewmew_body)
                    event_user(2)
                hbul_turns -= 1
            }
            heart_hurt_previous = 0
            turns += 1
            hbul_turns += 1
            with (obj_hearthalf)
                border_draw = 1
        }
        prev_hit = 0
        prev_pet = 0
        attacked = 1
    }
}
if (global.turntimer <= 1 && global.mnfight == 2)
{
    if (true_battle == 1)
        event_user(1)
    else
        global.mnfight = 4
}
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_mewmew_boss_336")
                if (true_battle >= 1)
                    global.msg[0] = scr_gettext("obj_mewmew_boss_338")
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
                global.myfight = 8
            }
            if (whatiheard == 3)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_mewmew_boss_349")
                if (true_battle == 1)
                {
                    global.msg[0] = scr_gettext("obj_mewmew_boss_354")
                    global.myfight = 8
                }
                if (true_battle == 2)
                {
                    global.msg[0] = scr_gettext("obj_mewmew_boss_359")
                    global.myfight = 9
                    true_con = 10
                }
                if (true_battle == 3)
                {
                    global.msg[0] = scr_gettext("obj_mewmew_boss_365")
                    global.myfight = 8
                }
                if (true_battle == 0)
                {
                    global.myfight = 9
                    true_con = 0
                }
                obj_writer_set_halt(3)
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = 0
            }
            global.heard = 1
        }
    }
}
if (global.myfight == 4)
{
    if (global.mercyuse == false && true_battle == 3)
    {
        global.myfight = 10
        true_con = 20
    }
}
if (global.mnfight == 4)
{
    if (border == 0)
    {
        ending = 0
        if (turns == 14 && true_battle == 1 && heart_hurt_count > 0)
            ending = 1
        if (turns >= 17 && true_battle == 1)
            ending = 1
        with (obj_heart)
        {
            x = -300
            movement = 0
            visible = true
        }
        if (ending == 0)
        {
            global.mnfight = 3
            attacked = 0
        }
        else
        {
            end_con = 0
            global.mnfight = 9
        }
    }
}
if (global.myfight == 8)
{
    if (!instance_exists(OBJ_WRITER))
    {
        global.myfight = 0
        global.mnfight = 1
    }
}
if (global.myfight == 9)
{
    if (!instance_exists(OBJ_WRITER))
    {
        if (true_con == 0)
        {
            with (obj_mewmew_body)
                shakex = 10
            snd_play(snd_damage)
            true_timer = 0
            true_con = 1
        }
        if (true_con == 10)
        {
            global.msg[0] = scr_gettext("obj_mewmew_boss_451")
            global.msg[1] = scr_gettext("obj_mewmew_boss_452")
            global.msg[2] = scr_gettext("obj_mewmew_boss_453")
            global.msg[3] = scr_gettext("obj_mewmew_boss_454")
            global.msg[4] = scr_gettext("obj_mewmew_boss_455")
            global.msg[5] = scr_gettext("obj_mewmew_boss_456")
            global.msg[6] = scr_gettext("obj_mewmew_boss_457")
            global.msg[7] = scr_gettext("obj_mewmew_boss_458")
            blcon = instance_create(386, 36, obj_blconwdflowey)
            global.typer = 33
            blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
            true_con = 11
        }
    }
    if (true_con == 1)
    {
        true_timer += 1
        if (true_timer >= 60)
        {
            global.msc = 0
            global.msg[0] = scr_gettext("obj_mewmew_boss_474")
            if (true_count == 1)
                global.msg[0] = scr_gettext("obj_mewmew_boss_475")
            if (true_count >= 2)
                global.msg[0] = " %%"
            iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
            with (iii)
                halt = 0
            true_con = 2
        }
    }
    if (true_con == 2 && (!instance_exists(OBJ_WRITER)))
    {
        true_count += 1
        if (true_count < 3)
        {
            true_con = 0
            global.myfight = 0
            global.mnfight = 1
        }
        else
        {
            true_con = 3
            true_timer = 0
        }
    }
    if (true_con == 3)
    {
        blcon = instance_create(386, 36, obj_blconwdflowey)
        global.faceemotion = 8
        with (obj_mewmew_body)
            shakex = 16
        snd_play(snd_damage)
        global.msg[0] = scr_gettext("obj_mewmew_boss_506")
        global.msg[1] = scr_gettext("obj_mewmew_boss_507")
        global.msg[2] = scr_gettext("obj_mewmew_boss_508")
        global.msg[3] = scr_gettext("obj_mewmew_boss_509")
        global.msg[4] = scr_gettext("obj_mewmew_boss_510")
        global.msg[5] = scr_gettext("obj_mewmew_boss_511")
        global.msg[6] = scr_gettext("obj_mewmew_boss_512")
        global.msg[7] = scr_gettext("obj_mewmew_boss_513")
        global.msg[8] = scr_gettext("obj_mewmew_boss_514")
        global.msg[9] = scr_gettext("obj_mewmew_boss_515")
        global.msg[10] = scr_gettext("obj_mewmew_boss_516")
        global.msg[11] = scr_gettext("obj_mewmew_boss_517")
        global.msg[12] = scr_gettext("obj_mewmew_boss_518")
        global.msg[13] = scr_gettext("obj_mewmew_boss_519")
        global.msg[14] = scr_gettext("obj_mewmew_boss_520")
        global.msg[15] = scr_gettext("obj_mewmew_boss_521")
        global.msg[16] = scr_gettext("obj_mewmew_boss_522")
        global.msg[17] = scr_gettext("obj_mewmew_boss_523")
        global.typer = 33
        blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
        true_con = 4
    }
    if (true_con == 4)
    {
        if (!instance_exists(blconwd))
        {
            snd_play(snd_break2)
            instance_create(0, 0, obj_flasher)
            with (blcon)
                instance_destroy()
            event_user(3)
            global.tempvalue[14] = 1
        }
    }
    if (true_con == 11)
    {
        if (!instance_exists(blconwd))
        {
            with (blcon)
                instance_destroy()
            true_con = 12
            true_battle = 3
            mercymod = 99999
            global.myfight = 0
            global.mnfight = 1
        }
    }
}
if (global.mnfight == 9)
{
    if (end_con == 0)
    {
        caster_free(global.batmusic)
        with (obj_mewmew_body)
            shakex = 10
        snd_play(snd_damage)
        global.msg[0] = scr_gettext("obj_mewmew_boss_564")
        global.msg[1] = scr_gettext("obj_mewmew_boss_565")
        global.msg[2] = scr_gettext("obj_mewmew_boss_566")
        global.msg[3] = scr_gettext("obj_mewmew_boss_567")
        global.msg[4] = scr_gettext("obj_mewmew_boss_568")
        global.msg[5] = scr_gettext("obj_mewmew_boss_569")
        global.msg[6] = scr_gettext("obj_mewmew_boss_570")
        blcon = instance_create(386, 36, obj_blconwdflowey)
        end_con = 1
        global.typer = 33
        blconwd = instance_create((blcon.x + 25), (blcon.y + 10), OBJ_NOMSCWRITER)
    }
    if (end_con == 1 && (!instance_exists(OBJ_WRITER)))
    {
        with (blcon)
            instance_destroy()
        global.mnfight = 3
        attacked = 0
        end_con = 0
        true_battle = 2
        global.msg[0] = scr_gettext("obj_mewmew_boss_585")
    }
}
if (global.myfight == 10)
{
    if (true_con == 20)
    {
        fa = instance_create(0, 0, obj_unfader)
        fa.fadespeed = 0.02
        spare_timer = 0
        true_con = 21
    }
    if (true_con == 21)
    {
        spare_timer += 1
        if (spare_timer >= 60)
        {
            FL_MadMewMewStatus = MadMewMewStatus.Spared
            ossafe_ini_open("undertale.ini")
            ini_write_real("Alphys", "M", 2)
            ossafe_ini_close()
            ossafe_savedata_save()
            event_user(4)
        }
    }
}
if instance_exists(obj_blconwdflowey)
    scr_textskip()
