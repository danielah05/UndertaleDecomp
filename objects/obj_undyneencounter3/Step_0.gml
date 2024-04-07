if (active == true && instance_exists(obj_mainchara))
{
    if (cn == 0 && global.interact == 0 && obj_mainchara.x > (x - 20))
    {
        global.interact = 1
        undyne.image_alpha = 0
        cn = 0.2
        if caster_is_playing(global.currentsong)
        {
            ou = instance_create(0, 0, obj_musfadeout)
            ou.fadespeed = 0.05
        }
        ar = instance_create(340, 80, obj_speartilefake)
        ar.alarm[5] = 30
        ar.alarm[6] = 260
        ar = instance_create(240, 60, obj_speartilefake)
        ar.alarm[5] = 80
        ar = instance_create(260, 100, obj_speartilefake)
        ar.alarm[5] = 130
        ar = instance_create(300, 60, obj_speartilefake)
        ar.alarm[5] = 200
        ar = instance_create(320, 80, obj_speartilefake)
        ar.alarm[5] = 203
        ar = instance_create(240, 80, obj_speartilefake)
        ar.alarm[5] = 206
        ar = instance_create(300, 80, obj_speartilefake)
        ar.alarm[5] = 209
        ar = instance_create(260, 80, obj_speartilefake)
        ar.alarm[5] = 212
        ar = instance_create(300, 100, obj_speartilefake)
        ar.alarm[5] = 215
        ar = instance_create(320, 60, obj_speartilefake)
        ar.alarm[5] = 218
        ar = instance_create(260, 60, obj_speartilefake)
        ar.alarm[5] = 221
    }
    if (cn == 0.2)
    {
        if (instance_number(obj_speartilefake) == false)
        {
            cn = 0.3
            alarm[4] = 20
            instance_create(40, 80, obj_solidsmall)
            instance_create(40, 100, obj_solidsmall)
            instance_create(40, 120, obj_solidsmall)
            yad = 0
            repeat (5)
            {
                ar2 = instance_create((50 - yad), (100 - (yad * 6)), obj_npc_marker)
                ar2.visible = true
                ar2.sprite_index = spr_tilespear
                ar2.image_index = 3
                ar2.image_speed = 0
                yad += 2
            }
        }
    }
    if (cn == 1.3)
        cn = 2
    if (cn == 2)
    {
        caster_play(ushock, 1, 1)
        cn = 3
        alarm[4] = 30
    }
    if (cn == 3)
    {
        if (undyne.image_alpha < 1)
            undyne.image_alpha += 0.05
    }
    if (cn == 4)
    {
        caster_loop(usong, 1, 1)
        global.currentsong = usong
        global.interact = 0
        obj_mainchara.cutscene = false
        FL_UnknownBoolean17 = true
        cn = 5
    }
    if (cn == 5)
    {
        undyne.vhspeed = 4
        undyne.image_speed = 0.25
        cn = 6
        alarm[4] = 6
    }
    if (cn == 7)
    {
        undyne.image_speed = 0
        undyne.vhspeed = 0
        sp = instance_create(undyne.x, undyne.y, obj_speartilegen)
        cn = 8
    }
    if (cn >= 8 && cn < 9)
    {
        if (stk.image_alpha < 1)
            stk.image_alpha += 0.1
        if (stopper == 1)
        {
            alarm[4] = -1
            stopper = 0
        }
        if (cn == 8)
        {
            if (obj_mainchara.x > (undyne.x + 40) && undyne.xhome < 1110)
            {
                undyne.hhspeed = 3
                undyne.image_speed = 0.2
                alarm[5] = 15
                cn = 9
            }
            if (obj_mainchara.x < (undyne.x - 40))
            {
                undyne.hhspeed = -3
                undyne.image_speed = 0.2
                alarm[5] = 15
                cn = 9
            }
            if (undyne.xhome >= 1110)
            {
                undyne.hhspeed = 0
                undyne.yhome = 161
                undyne.image_speed = 0
                cn = 8.1
            }
        }
        if (cn == 8.1)
        {
            if (obj_mainchara.y > (undyne.y + 60) && undyne.yhome < 550)
            {
                undyne.vhspeed = 3
                undyne.image_speed = 0.2
                alarm[4] = 10
            }
            if (obj_mainchara.y < (undyne.y - 60) && undyne.yhome > 160)
            {
                undyne.vhspeed = -3
                undyne.image_speed = 0.2
                alarm[4] = 10
            }
            if (undyne.yhome <= 160)
            {
                undyne.vhspeed = 0
                undyne.image_speed = 0
                if (obj_mainchara.x < (undyne.x - 60))
                {
                    cn = 8
                    undyne.xhome = 1109
                    alarm[4] = -1
                }
            }
            if (undyne.yhome >= 550)
            {
                undyne.vhspeed = 0
                undyne.image_speed = 0
                undyne.xhome = 1109
                cn = 8.2
                alarm[4] = -1
            }
        }
        if (cn == 8.2)
        {
            if (obj_mainchara.x > (undyne.x + 40) && undyne.xhome < 1110)
            {
                undyne.hhspeed = 3
                undyne.image_speed = 0.2
                alarm[5] = 15
                cn = 9.2
            }
            if (obj_mainchara.x < (undyne.x - 20) && undyne.xhome > 800)
            {
                undyne.hhspeed = -3
                undyne.image_speed = 0.2
                alarm[5] = 15
                cn = 9.2
            }
            if (undyne.xhome <= 800)
            {
                undyne.hhspeed = 0
                undyne.image_speed = 0
                cn = 8.3
                undyne.yhome = 551
            }
            if (undyne.xhome >= 1110)
            {
                undyne.hhspeed = 0
                undyne.image_speed = 0
                undyne.yhome = 549
                cn = 8.1
            }
        }
        if (cn == 8.3)
        {
            if (obj_mainchara.y > (undyne.y + 60) && undyne.yhome > 550)
            {
                undyne.vhspeed = 3
                undyne.image_speed = 0.2
                alarm[4] = 10
            }
            if (obj_mainchara.y < (undyne.y - 10) && undyne.yhome < 800)
            {
                undyne.vhspeed = -3
                undyne.image_speed = 0.2
                alarm[4] = 10
            }
            if (undyne.yhome <= 550)
            {
                undyne.vhspeed = 0
                undyne.image_speed = 0
                if (obj_mainchara.x > (undyne.x + 60))
                {
                    cn = 8.2
                    undyne.yhome = 551
                    undyne.xhome = 801
                    alarm[4] = -1
                }
            }
            if (undyne.yhome >= 800)
            {
                undyne.vhspeed = 0
                undyne.image_speed = 0
                if (obj_mainchara.x > (undyne.x + 40))
                {
                    undyne.xhome = 801
                    cn = 8.4
                    alarm[4] = -1
                }
            }
        }
        if (cn == 8.4)
        {
            if (obj_mainchara.x > (undyne.x + 40) && undyne.xhome < 1110)
            {
                undyne.hhspeed = 3
                undyne.image_speed = 0.2
                alarm[5] = 15
                cn = 9.4
            }
            if (obj_mainchara.x < (undyne.x - 20) && undyne.xhome > 800)
            {
                undyne.hhspeed = -3
                undyne.image_speed = 0.2
                alarm[5] = 15
                cn = 9.4
            }
            if (undyne.xhome <= 800)
            {
                undyne.hhspeed = 0
                undyne.image_speed = 0
                if (obj_mainchara.y < (undyne.y - 10))
                {
                    undyne.yhome = 799
                    cn = 8.3
                }
            }
            if (undyne.xhome >= 1110)
            {
                undyne.hhspeed = 0
                undyne.image_speed = 0
            }
        }
    }
    if (cn == 10)
    {
        if (obj_mainchara.x > (undyne.x + 40) || obj_mainchara.x < (undyne.x - 40))
            cn = 8
        else
        {
            undyne.image_speed = 0
            undyne.hhspeed = 0
            cn = 8
        }
    }
    if (cn == 9)
    {
        if (undyne.xhome > 1110)
            undyne.hhspeed = 0
        if (alarm[5] <= 1)
            cn = 10
    }
    if (cn == 9.1)
        cn = 12
    if (cn == 9.2)
    {
        if (undyne.xhome > 1110 || undyne.xhome < 800)
            undyne.hhspeed = 0
        if (alarm[5] <= 1)
            cn = 13
    }
    if (cn == 9.3)
        cn = 14
    if (cn == 9.4)
    {
        if (undyne.xhome > 1110 || undyne.xhome < 800)
            undyne.hhspeed = 0
        if (alarm[5] <= 1)
            cn = 15
    }
    if (cn == 12)
    {
        if (obj_mainchara.y > (undyne.y + 60) || obj_mainchara.y < (undyne.y - 60))
            cn = 8.1
        else
        {
            undyne.image_speed = 0
            undyne.vhspeed = 0
            cn = 8.1
        }
    }
    if (cn == 13)
    {
        if (obj_mainchara.x > (undyne.x + 40) || obj_mainchara.x < (undyne.x - 20))
            cn = 8.2
        else
        {
            undyne.image_speed = 0
            undyne.hhspeed = 0
            cn = 8.2
        }
    }
    if (cn == 14)
    {
        if (obj_mainchara.y > (undyne.y + 60) || obj_mainchara.y < (undyne.y - 60))
            cn = 8.3
        else
        {
            undyne.image_speed = 0
            undyne.vhspeed = 0
            cn = 8.3
        }
    }
    if (cn == 15)
    {
        if (obj_mainchara.x > (undyne.x + 40) || obj_mainchara.x < (undyne.x - 20))
            cn = 8.4
        else
        {
            undyne.image_speed = 0
            undyne.hhspeed = 0
            cn = 8.4
        }
    }
}
