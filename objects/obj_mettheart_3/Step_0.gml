s3 += 1
q = 0
s2 += 0.08
repeat num
{
    greg = degtorad(((q * 360) / num))
    if (kid[q].shot == 0)
    {
        kid[q].x = ((x + (sin((greg + s2)) * sf2)) - 14)
        kid[q].y = ((y + (cos((greg + s2)) * sf2)) - 15)
    }
    q += 1
}
if (movetype == 0)
{
    x = (xstart + (sin((s / sp)) * sf))
    y = (ystart + ((sin(((s / sp) * 2)) * sf) / 3))
    if (shake == 0)
        s += 1
    if (shake > 0)
    {
        x = ((memx + random((shake * 2))) - shake)
        y = ((memy + random((shake * 2))) - shake)
        shake -= 1
    }
}
lightning_timer += 1
if (lightning_timer > 40 && lightning_timer < 50)
{
    ddir = random(360)
    image_speed = 0.5
}
if (lightning_timer == 50)
{
    image_speed = 0
    i = 0
    repeat (11)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.09
        lt.direction = ((0 + ((i * 360) / 11)) + ddir)
        i += 1
    }
}
if (lightning_timer == 56)
{
    image_speed = 0
    i = 0
    repeat (11)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.09
        lt.direction = ((0 + (((i + 0.5) * 360) / 11)) + ddir)
        i += 1
    }
}
if (lightning_timer == 62)
{
    image_speed = 0
    i = 0
    repeat (11)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.09
        lt.direction = ((0 + ((i * 360) / 11)) + ddir)
        i += 1
    }
}
if (lightning_timer == 68)
{
    image_speed = 0
    i = 0
    repeat (11)
    {
        lt = instance_create(x, y, obj_mettlightning_pl)
        lt.speed = 2
        lt.friction = -0.09
        lt.direction = ((0 + (((i + 0.5) * 360) / 11)) + ddir)
        i += 1
    }
}
if (movetype > 99)
{
    if (lightning_timer > 100 && lightning_timer < 145)
    {
        s2 -= 0.1
        s3 = 0
        sf2 += 9
    }
    if (lightning_timer == 145)
    {
        q = 0
        repeat num
        {
            kid[q].visible = true
            q += 1
        }
    }
    if (lightning_timer > 145 && lightning_timer < 300)
    {
        s2 -= 0.1
        s3 = 0
        sf2 -= 8
        if (sf2 < 35)
        {
            sf2 = 30
            lightning_timer = 40
        }
    }
}
if (movetype == 99)
{
    if (lightning_timer == 110)
    {
        i = 0
        repeat (7)
        {
            bb[i] = instance_create((global.idealborder[0] + (i * 25)), 100, obj_npc_marker)
            bb[i].sprite_index = spr_plusbomb
            i += 1
        }
    }
    if (lightning_timer > 110 && lightning_timer < 125)
    {
        i = 0
        repeat (7)
        {
            if (bb[i].visible == false)
                bb[i].visible = true
            else
                bb[i].visible = false
            i += 1
        }
    }
    if (lightning_timer == 125)
    {
        lightning_timer = 35
        i = 0
        fs = choose(0, 1, 2, 3, 4, 5, 6)
        fs0 = choose(0, 1, 2, 3, 4, 5, 6)
        if (fs == fs0)
            fs += 1
        if (fs > 6)
            fs = 0
        repeat (7)
        {
            with (bb[i])
                instance_destroy()
            br[i] = instance_create((global.idealborder[0] + (i * 25)), 100, obj_plusbomb)
            br[i].friction = 0
            v = choose(4, 4.5, 5)
            br[i].vspeed = v
            if (i == fs)
                br[i].vspeed = 6
            if (i == fs0)
                br[i].vspeed = 3
            i += 1
        }
    }
}
if (lightning_timer == 95 && movetype == 99)
{
    mt = instance_create(global.idealborder[0], -20, obj_dancemett)
    mt.vspeed = 3
    mt.type = 2
    mt.early = 200
    mt = instance_create((global.idealborder[1] - 25), -20, obj_dancemett)
    mt.vspeed = 3
    mt.early = 200
    mt.type = 2
}
if (lightning_timer == 110)
    instance_create(0, 0, obj_legline_l)
if (lightning_timer == 140)
    instance_create(0, 0, obj_legline_r)
if (lightning_timer == 160)
    lightning_timer = 20
life -= 1.25
