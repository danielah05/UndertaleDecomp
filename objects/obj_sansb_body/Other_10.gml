with (obj_sansb)
    timer_on = 1
if (a_type == 0)
{
    global.turntimer = 200
    for (i = 0; i < 8; i += 1)
    {
        scr_sbo(20, 6, (40 + (i * 20)), 0)
        scr_sbo(20, -6, (40 + (i * 20)), 0)
        scr_sbo(40, 6, (40 + (i * 20)), 2)
        scr_sbo(40, -6, (40 + (i * 20)), 2)
    }
}
if (a_type == 1)
{
    global.turntimer = 190
    if (hell == 1)
    {
        for (i = 0; i < 8; i += 1)
        {
            scr_sbo(20, 8, (40 + (i * 18)), 0)
            scr_sbo(20, -8, (40 + (i * 18)), 0)
            scr_sbo(40, 8, (40 + (i * 18)), 2)
            scr_sbo(40, -8, (40 + (i * 18)), 2)
        }
    }
    else
    {
        for (i = 0; i < 8; i += 1)
        {
            scr_sbo(20, 7, (40 + (i * 19)), 0)
            scr_sbo(20, -7, (40 + (i * 19)), 0)
            scr_sbo(40, 7, (40 + (i * 19)), 2)
            scr_sbo(40, -7, (40 + (i * 19)), 2)
        }
    }
}
if (a_type == 2)
{
    global.turntimer = 240
    value = 0
    for (i = 0; i < 5; i += 1)
    {
        ht = choose(20, 30, 40, 60)
        xx = 0
        if (i > 0)
            xx = choose(-2, 0, 2)
        if (ht == 60)
            xx = 0
        if (ht == 40)
            xx *= 0.5
        scr_sbo(ht, (7 + xx), ((40 + (i * 25)) + value), 0)
        scr_sbo(ht, (-7 + xx), ((40 + (i * 25)) + value), 0)
        scr_sbo((ht + 24), (7 + xx), ((40 + (i * 25)) + value), 2)
        scr_sbo((ht + 24), (-7 + xx), ((40 + (i * 25)) + value), 2)
        if (ht == 30)
            value += 5
        if (ht == 40)
            value += 10
        if (ht == 60)
            value += 20
    }
}
if (a_type == 3)
{
    global.turntimer = 190
    if (hell == 1)
    {
        scr_sbo(100, -12, 25, 1)
        scr_sbo(20, -12, 32, 0)
        scr_sbo(100, -12, 47, 1)
        scr_sbo(20, -12, 54, 0)
        scr_sbo(100, -12, 69, 1)
        scr_sbo(20, -12, 76, 0)
        scr_sbo(20, 10, 105, 0)
        scr_sbo(100, 10, 117, 1)
        scr_sbo(20, 10, 127, 0)
        scr_sbo(100, 10, 139, 1)
        scr_sbo(20, 10, 149, 0)
        scr_sbo(100, 10, 161, 1)
    }
    else
    {
        scr_sbo(100, -10, 25, 1)
        scr_sbo(20, -10, 32, 0)
        scr_sbo(100, -10, 47, 1)
        scr_sbo(20, -10, 54, 0)
        scr_sbo(100, -10, 69, 1)
        scr_sbo(20, -10, 76, 0)
        scr_sbo(20, 10, 105, 0)
        scr_sbo(100, 10, 117, 1)
        scr_sbo(20, 10, 127, 0)
        scr_sbo(100, 10, 139, 1)
        scr_sbo(20, 10, 149, 0)
        scr_sbo(100, 10, 161, 1)
    }
}
if (a_type == 5)
{
    global.turntimer = 230
    for (i = 0; i < 8; i += 1)
    {
        scr_sbo(20, 4, (65 + (i * 19)), 0)
        scr_sbo(28, -4, (65 + (i * 19)), 2)
    }
}
if (a_type == 6)
{
    global.turntimer = 250
    scr_bwall(30, 4, 60, 41)
    scr_hplat(40, 4, 70, 30)
    scr_hplat(40, 5, 120, 30)
    scr_hplat(40, 6, 160, 30)
    scr_sbo(90, 7, 160, 2)
    scr_sbo(90, 7, 162, 2)
    scr_sbo(90, 7, 164, 2)
    scr_sbo(40, 9, 222, 2)
}
if (a_type == 7)
{
    global.turntimer = 290
    scr_bwall(30, -4, 60, 58)
    scr_hplat(40, -5, 70, 25)
    scr_sbo(70, -5, 90, 0)
    scr_hplat(90, -5, 95, 25)
    scr_hplat(40, -5, 110, 25)
    scr_hplat(60, -5, 150, 25)
    scr_sbo(90, -5, 148, 2)
    scr_hplat(50, -5, 170, 25)
    scr_sbo(80, -5, 168, 2)
    scr_hplat(70, -5, 190, 25)
    scr_sbo(100, -5, 188, 2)
    scr_hplat(90, -2, 230, 15)
    scr_sbo(110, -8, 240, 0)
    scr_sbo(40, 3, 260, 2)
}
if (a_type == 8)
{
    global.turntimer = 240
    plat = instance_create(0, 0, obj_3platgen)
    plat.type = 1
}
if (a_type == 9)
{
    global.idealborder[2] -= 200
    global.idealborder[0] += 60
    global.idealborder[1] -= 60
    instance_create(0, 0, obj_vplatgen)
}
if (a_type == 10)
{
    obj_heart.speed = 0
    obj_heart.movement = 1
    global.idealborder[2] = (global.idealborder[3] - 200)
    global.idealborder[0] = 220
    global.idealborder[1] = 420
    if (hell == 1)
    {
        b1 = instance_create(-40, (global.idealborder[2] - 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = 7
        b1 = instance_create(720, (global.idealborder[2] + 100), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = -8
        b1 = instance_create((global.idealborder[0] - 90), -110, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 90), 730, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -7
        b1 = instance_create(-190, (global.idealborder[2] - 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = 5
        b1 = instance_create(870, (global.idealborder[2] + 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = -8
        b1 = instance_create((global.idealborder[0] - 90), -310, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 90), 900, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -6
        b1 = instance_create(-700, (global.idealborder[2] - 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = 7
        b1 = instance_create(1290, (global.idealborder[2] + 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = -7
        b1 = instance_create((global.idealborder[0] - 90), -650, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 90), 1180, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -7
    }
    if (hell == 0)
    {
        b1 = instance_create(-40, (global.idealborder[2] - 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = 7
        b1 = instance_create(720, (global.idealborder[2] + 100), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = -8
        b1 = instance_create((global.idealborder[0] - 90), -110, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 90), 760, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -7
        b1 = instance_create(-190, (global.idealborder[2] - 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = 5
        b1 = instance_create(870, (global.idealborder[2] + 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = -8
        b1 = instance_create((global.idealborder[0] - 90), -310, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 90), 900, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -6
        b1 = instance_create(-660, (global.idealborder[2] - 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = 6
        b1 = instance_create(1290, (global.idealborder[2] + 95), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_tall
        b1.hspeed = -7
        b1 = instance_create((global.idealborder[0] - 90), -650, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 90), 1180, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -7
        b1 = instance_create((global.idealborder[0] - 90), -960, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 7
        b1 = instance_create((global.idealborder[0] + 110), 1510, obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -7
    }
}
if (a_type == 11)
{
    obj_heart.speed = 0
    obj_heart.movement = 1
    global.idealborder[2] = (global.idealborder[3] - 200)
    global.idealborder[0] = 270
    global.idealborder[1] = 470
    b1 = instance_create(-40, (global.idealborder[2] - 95), obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_tall
    b1.hspeed = 6
    b1 = instance_create(770, (global.idealborder[2] + 100), obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_tall
    b1.hspeed = -7
    b1 = instance_create((global.idealborder[0] + 100), -250, obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_wide
    b1.vspeed = 7
    b1 = instance_create((global.idealborder[0] - 100), 630, obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_wide
    b1.vspeed = -6
    b1 = instance_create(-190, (global.idealborder[2] - 95), obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_tall
    b1.hspeed = 6
    b1 = instance_create(1120, (global.idealborder[2] + 100), obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_tall
    b1.hspeed = -7
    b1 = instance_create((global.idealborder[0] + 100), -500, obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_wide
    b1.vspeed = 7
    b1 = instance_create((global.idealborder[0] - 100), 880, obj_bonewall_normal)
    b1.sprite_index = spr_s_bonewall_wide
    b1.vspeed = -6
}
if (a_type == 12)
{
    global.turntimer = 240
    obj_heart.speed = 0
    obj_heart.movement = 1
    global.idealborder[2] = (global.idealborder[3] - 200)
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    gb = instance_create(0, 0, obj_gasterbl_gen)
    gb.type = 1
}
if (a_type == 13)
{
    global.turntimer = 240
    obj_heart.speed = 0
    obj_heart.movement = 1
    global.idealborder[2] = (global.idealborder[3] - 200)
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    gb = instance_create(0, 0, obj_gasterbl_gen)
    gb.type = 2
}
if (a_type == 14)
    fac = 1
if (a_type == 15)
{
    global.turntimer = 250
    dplat = instance_create(0, 0, obj_3platgen)
    dplat.type = 2
}
if (a_type == 16)
{
    global.turntimer = 240
    dplat = instance_create(0, 0, obj_3platgen)
    dplat.type = 3
}
if (a_type == 17)
{
    global.turntimer = 220
    scr_bwall(20, 2, 3, 50)
    scr_bwall(20, 2, -5, 20)
    obj_heart.y = (global.idealborder[3] - 70)
    obj_heart.vspeed = 1
    scr_hplat(50, 0, 0, 20)
    bone.jud = 1
    bone.x -= 150
    obj_heart.x -= 150
    lb = instance_create((global.idealborder[1] - 260), (global.idealborder[2] + 40), obj_boneloop_v)
    lb.vspeed = -4
    lb = instance_create((global.idealborder[1] - 260), (global.idealborder[2] + 125), obj_boneloop_v)
    lb.vspeed = -4
    lb = instance_create((global.idealborder[1] - 180), global.idealborder[2], obj_boneloop_v)
    lb.vspeed = 5
    lb = instance_create((global.idealborder[1] - 180), (global.idealborder[2] + 95), obj_boneloop_v)
    lb.vspeed = 5
    lb = instance_create((global.idealborder[1] - 100), (global.idealborder[2] + 20), obj_boneloop_v)
    lb.vspeed = -3
    lb = instance_create((global.idealborder[1] - 100), (global.idealborder[2] + 105), obj_boneloop_v)
    lb.vspeed = -3
}
if (a_type == 18)
{
    global.turntimer = 220
    scr_bwall(20, 2, 3, 50)
    scr_bwall(20, 2, -5, 20)
    obj_heart.y = (global.idealborder[3] - 70)
    obj_heart.vspeed = 1
    scr_hplat(50, 0, 0, 15)
    bone.jud = 1
    bone.x -= 150
    obj_heart.x -= 150
    lb = instance_create((global.idealborder[1] - 260), (global.idealborder[2] + 40), obj_boneloop_v)
    lb.vspeed = -3
    lb = instance_create((global.idealborder[1] - 260), (global.idealborder[2] + 105), obj_boneloop_v)
    lb.vspeed = -3
    lb = instance_create((global.idealborder[1] - 260), (global.idealborder[2] + 170), obj_boneloop_v)
    lb.vspeed = -3
    lb = instance_create((global.idealborder[1] - 180), global.idealborder[2], obj_boneloop_v)
    lb.vspeed = 4
    lb = instance_create((global.idealborder[1] - 180), (global.idealborder[2] + 90), obj_boneloop_v)
    lb.vspeed = 4
    lb = instance_create((global.idealborder[1] - 100), (global.idealborder[2] + 40), obj_boneloop_v)
    lb.vspeed = -3
    lb = instance_create((global.idealborder[1] - 100), (global.idealborder[2] + 105), obj_boneloop_v)
    lb.vspeed = -3
    lb = instance_create((global.idealborder[1] - 100), (global.idealborder[2] + 170), obj_boneloop_v)
    lb.vspeed = -3
}
if (a_type == 19)
{
    test_timer = 0
    test_timer_on = 1
    lac = 4
    with (obj_sansb)
        timer_on = 0
}
if (a_type == 20)
{
    obj_heart.speed = 0
    with (obj_sansb)
        timer_on = 0
    global.idealborder[0] = 270
    global.idealborder[1] = 370
    global.idealborder[2] = (global.idealborder[3] - 100)
    obj_heart.x = (global.idealborder[0] + 42)
    obj_heart.y = (global.idealborder[2] + 42)
    obj_heart.movement = 1
    obj_heart.sprite_index = spr_heart_battle_pl
    mk_c_timer = 0
    mk_c = 1
}
if (a_type == 21)
{
    global.turntimer = 210
    vtotal = 0
    while (vtotal < 150)
    {
        ht = choose(20, 30, 40, 60)
        xx = 0
        down = 0
        if (i > 0)
            xx = choose(-2, 0, 2)
        if (ht == 60)
        {
            xx = 0
            down = 1
        }
        if (ht == 40)
            xx = 0
        if (i > 0)
        {
            if (ht == 20)
                vtotal += 7
            if (ht == 30)
                vtotal += 9
            if (ht == 40)
                vtotal += 16
            if (ht == 60)
                vtotal += 22
        }
        if (down == 1)
            xx = -1
        scr_sbo(ht, (8 + xx), (32 + vtotal), 0)
        if (down == 1)
            xx = 1
        scr_sbo(ht, (-8 + xx), (32 + vtotal), 0)
        if (down == 1)
            xx = -1
        scr_sbo((ht + 24), (8 + xx), (32 + vtotal), 2)
        if (down == 1)
            xx = 1
        scr_sbo((ht + 24), (-8 + xx), (32 + vtotal), 2)
        if (ht == 20)
            vtotal += 12
        if (ht == 30)
            vtotal += 13
        if (ht == 40)
            vtotal += 16
        if (ht == 60)
            vtotal += 22
    }
}
if (a_type == 22)
{
    global.turntimer = 180
    obj_heart.speed = 0
    obj_heart.movement = 1
    global.idealborder[2] = (global.idealborder[3] - 160)
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    obj_heart.x = (global.idealborder[0] + 76)
    obj_heart.y = (global.idealborder[2] + 76)
    for (i = 0; i < 7; i += 1)
    {
        b1 = instance_create((global.idealborder[0] - 110), ((global.idealborder[2] - 300) - (i * (216 - (i * 3)))), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = 10
        b1 = instance_create((global.idealborder[1] - 70), ((global.idealborder[3] + 300) + (i * (216 - (i * 3)))), obj_bonewall_normal)
        b1.sprite_index = spr_s_bonewall_wide
        b1.vspeed = -10
    }
}
if (a_type == 23)
{
    global.turntimer = 210
    vtotal = 0
    while (vtotal < 150)
    {
        ht = choose(20, 30, 40, 60)
        xx = 0
        down = 0
        if (i > 0)
            xx = choose(-2, 0, 2)
        if (ht == 60)
        {
            xx = 0
            down = 1
        }
        if (ht == 40)
            xx = 0
        if (i > 0)
        {
            if (ht == 20)
                vtotal += 9
            if (ht == 30)
                vtotal += 11
            if (ht == 40)
                vtotal += 19
            if (ht == 60)
                vtotal += 25
        }
        if (down == 1)
            xx = -1
        scr_sbo(ht, (8 + xx), (32 + vtotal), 0)
        if (down == 1)
            xx = 1
        scr_sbo(ht, (-8 + xx), (32 + vtotal), 0)
        if (down == 1)
            xx = -1
        scr_sbo((ht + 24), (8 + xx), (32 + vtotal), 2)
        if (down == 1)
            xx = 1
        scr_sbo((ht + 24), (-8 + xx), (32 + vtotal), 2)
        if (ht == 20)
            vtotal += 15
        if (ht == 30)
            vtotal += 17
        if (ht == 40)
            vtotal += 19
        if (ht == 60)
            vtotal += 25
    }
}
