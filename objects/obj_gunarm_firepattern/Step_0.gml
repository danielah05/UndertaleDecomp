ks += 1
king.y += (sin((ks / 8)) * 0.5)
y += tyspeed
x += txspeed
if (abs(txspeed) > 0)
    txspeed *= 0.5
if (abs(txspeed) <= 1)
    txspeed = 0
if (abs(tyspeed) > 0)
    tyspeed *= 0.5
if (abs(tyspeed) <= 1)
    tyspeed = 0
if (x < thisx)
    x += ((thisx - x) / 3)
if (y < thisy)
    y += ((thisy - y) / 3)
if (x > thisx)
    x += ((thisx - x) / 3)
if (y > thisy)
    y += ((thisy - y) / 3)
if (abs((x - thisx)) < 2)
    x = thisx
if (abs((x - thisy)) < 2)
    y = thisy
if (bb == 99)
{
    if (vspeed > 0 && y >= thisy)
    {
        y = thisy
        x = thisx
        bb = 0
        gravity = 0
        vspeed = 0
        hspeed = 0
    }
}
if (unhinge == 0)
{
    if (image_index > 0 && vspeed > -2)
        image_index -= 1
}
if (home == 1)
    image_angle = (point_direction(x, y, (obj_heart.x + 8), (obj_heart.y + 8)) + 90)
if (con == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.1
    else
        con = 1
}
if (h_mode == 0)
{
    if (con == 1)
    {
        ctimer += 0.5
        if (ctimer >= 27.5)
            ctimer += 0.5
        if (ctimer == 1)
        {
            l_timer = 20
            home = 1
            type = 1
            fire = 0
            maxfire = 6
            alarm[5] = 20
        }
        if (ctimer == 28)
        {
            l_timer = 10
            home = 1
            type = 2
            fire = 0
            maxfire = 6
            alarm[5] = 10
        }
        if (ctimer == 54)
        {
            l_timer = 8
            home = 1
            type = 1
            fire = 0
            maxfire = 5
            alarm[5] = 8
        }
        if (ctimer == 78)
        {
            l_timer = 8
            home = 1
            type = 2
            fire = 0
            maxfire = 5
            alarm[5] = 8
        }
        if (ctimer == 100)
        {
            l_timer = 8
            home = 1
            type = 1
            fire = 0
            maxfire = 4
            alarm[5] = 8
        }
        if (ctimer == 122)
        {
            l_timer = 8
            home = 1
            type = 2
            fire = 0
            maxfire = 4
            alarm[5] = 8
        }
        if (ctimer == 140)
        {
            l_timer = 6
            home = 1
            type = 1
            fire = 0
            maxfire = 4
            alarm[5] = 6
        }
        if (ctimer == 156)
        {
            l_timer = 6
            home = 1
            type = 2
            fire = 0
            maxfire = 4
            alarm[5] = 6
        }
        if (ctimer == 170)
        {
            l_timer = 6
            home = 1
            type = 1
            fire = 0
            maxfire = 8
            alarm[5] = 6
        }
        if (ctimer == 190)
        {
            caster_play(sfx_p, 1, 0.55)
            meter = 1
        }
        if (ctimer == 205)
        {
            home = 0
            aaspeed = 45
        }
        if (ctimer >= 205 && ctimer < 255)
        {
            image_angle += aaspeed
            if (aaspeed > 0)
                aaspeed -= 3
            else
            {
                aaspeed = 0
                ctimer = 255
            }
        }
        if (ctimer == 255)
            home = 1
        if (ctimer == 257)
        {
            sprite_index = spr_asriel_gunarm_unhinge
            image_speed = 1
            unhinge = 1
            home = 0
        }
        if (ctimer == 275)
        {
            metercounter = 7
            caster_play(sfx_l, 1, 1.1)
            blast = 1
            bt = 70
            btimer = 0
        }
        if (ctimer >= 315)
        {
            with (king)
            {
                if (guncon == 5)
                    guncon = 7
            }
            image_alpha -= 0.1
            if (image_alpha < 0.1)
                instance_destroy()
        }
    }
}
if (h_mode == 1)
{
    if (con == 1)
    {
        ctimer += 0.5
        if (ctimer >= 19.5)
            ctimer += 0.5
        if (ctimer == 1)
        {
            l_timer = 20
            home = 1
            type = 1
            fire = 0
            maxfire = 6
            alarm[5] = 20
        }
        if (ctimer == 25)
        {
            l_timer = 10
            home = 1
            type = choose(1, 2)
            fire = 0
            maxfire = 6
            alarm[5] = 10
        }
        if (ctimer == 50)
        {
            l_timer = 8
            home = 1
            type = choose(1, 2)
            fire = 0
            maxfire = 5
            alarm[5] = 8
        }
        if (ctimer == 75)
        {
            l_timer = 7
            home = 1
            type = 2
            fire = 0
            maxfire = 4
            alarm[5] = 7
        }
        if (ctimer == 95)
        {
            l_timer = 7
            home = 1
            type = 1
            fire = 0
            maxfire = 4
            alarm[5] = 7
        }
        if (ctimer == 115)
        {
            l_timer = 7
            home = 1
            type = choose(1, 2)
            fire = 0
            maxfire = 4
            alarm[5] = 7
        }
        if (ctimer == 132)
        {
            l_timer = 6
            home = 1
            type = 2
            fire = 0
            maxfire = 4
            alarm[5] = 6
        }
        if (ctimer == 156)
        {
            l_timer = 6
            home = 1
            type = 2
            fire = 0
            maxfire = 4
            alarm[5] = 6
        }
        if (ctimer == 170)
        {
            l_timer = 6
            home = 1
            type = 1
            fire = 0
            maxfire = 10
            alarm[5] = 6
        }
        if (ctimer == 200)
        {
            caster_play(sfx_p, 1, 0.55)
            meter = 1
        }
        if (ctimer == 215)
        {
            home = 0
            aaspeed = 90
        }
        if (ctimer >= 215 && ctimer < 240)
        {
            image_angle += aaspeed
            if (aaspeed > 0)
                aaspeed -= 6
            else
            {
                aaspeed = 0
                ctimer = 255
            }
        }
        if (ctimer == 255)
            home = 1
        if (ctimer == 257)
        {
            sprite_index = spr_asriel_gunarm_unhinge
            image_speed = 1
            unhinge = 1
            home = 0
        }
        if (ctimer == 270)
        {
            metercounter = 7
            caster_play(sfx_l, 1, 1.1)
            blast = 1
            bt = 70
            btimer = 0
        }
        if (ctimer == 272 || ctimer == 274 || ctimer == 276 || ctimer == 278 || ctimer == 280 || ctimer == 282 || ctimer == 284)
        {
            jr += 8
            for (i = 0; i < 24; i += 1)
            {
                star = instance_create(x, y, obj_regstar_blt)
                star.h_mode = 0
                star.friction = -0.1
                star.speed = 8
                star.direction = (jr + (15 * i))
                star.depth = -9000
            }
        }
        if (ctimer >= 310)
        {
            with (king)
            {
                if (guncon == 5)
                    guncon = 7
            }
            image_alpha -= 0.1
            if (image_alpha < 0.1)
                instance_destroy()
        }
    }
}
