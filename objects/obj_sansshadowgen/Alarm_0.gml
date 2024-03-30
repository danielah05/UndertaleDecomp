with (obj_borderparent)
    visible = true
snd_play(snd_noise)
caster_resume(global.batmusic)
shadow = 0
global.idealborder[3] = 385
if (level == 0)
{
    s_type = choose(0, 1, 2, 3, 4)
    if (prev_s == s_type)
        s_type = choose(0, 1, 2, 3, 4)
    if (prev_s == s_type)
        s_type = choose(0, 1, 2, 3, 4)
}
if (level == 1)
{
    s_type = choose(5, 6, 7, 8)
    if (prev_s == s_type)
        s_type = choose(5, 6, 7, 8)
    if (prev_s == s_type)
        s_type = choose(5, 6, 7, 8)
}
if (level == 2)
{
    s_type = choose(0, 1, 2, 3, 4, 5, 6, 7, 8)
    if (prev_s == s_type)
        s_type = choose(0, 1, 2, 3, 4, 5, 6, 7, 8)
    if (prev_s == s_type)
        s_type = choose(0, 1, 2, 3, 4, 5, 6, 7, 8)
}
if (level == 3)
{
    s_type = 50
    if (prev_s == 50)
        s_type = 51
    if (prev_s == 51)
        s_type = 52
    if (prev_s == 52)
        s_type = 53
    if (prev_s == 53)
        s_type = 54
}
prev_s = s_type
if (shadow_num >= shadow_max)
{
    if (level < 3)
    {
        if (!instance_exists(obj_menubone_maker))
            instance_create(0, 0, obj_menubone_maker)
    }
    obj_sansb_body.x = 320
    with (obj_sansb)
        attacked = 0
    with (obj_borderparent)
        instaborder = 0
    s_type = -1
    global.mnfight = 3
    with (obj_heart)
        movement = 1
    with (obj_heart)
        jumpstage = 0
    with (obj_heart)
        sprite_index = spr_heart
    with (obj_heart)
        speed = 0
    instance_destroy()
    return;
}
else if (level < 3)
    obj_sansb_body.x = (100 + random(440))
shadow_num += 1
if (s_type == 0)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    global.idealborder[2] = (global.idealborder[3] - 110)
    obj_heart.x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 5)
    obj_heart.y = (global.idealborder[3] - 15)
    scr_sbo(45, 8, 25, 0)
    scr_sbo(45, -8, 25, 0)
    scr_sbo(45, 8, 27, 0)
    scr_sbo(45, -8, 27, 0)
    scr_sbo(45, 8, 29, 0)
    scr_sbo(45, -8, 29, 0)
    scr_sbo(45, 8, 31, 0)
    scr_sbo(45, -8, 31, 0)
    scr_sbo(100, 8, 33, 0)
    scr_sbo(100, -8, 33, 0)
    alarm[1] = 28
}
if (s_type == 1)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    global.idealborder[2] = (global.idealborder[3] - 110)
    obj_heart.x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 5)
    obj_heart.y = (global.idealborder[3] - 15)
    scr_sbo(100, 8, 25, 1)
    scr_sbo(100, -8, 25, 1)
    scr_sbo(20, 8, 34, 0)
    scr_sbo(20, -8, 34, 0)
    scr_sbo(100, 8, 38, 0)
    scr_sbo(100, -8, 38, 0)
    alarm[1] = 35
}
if (s_type == 2)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    global.idealborder[0] = 170
    global.idealborder[1] = 470
    global.idealborder[2] = (global.idealborder[3] - 110)
    obj_heart.x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 5)
    obj_heart.y = (global.idealborder[3] - 15)
    value = 0
    for (i = 0; i < 7; i += 1)
    {
        ht = choose(20, 30, 40)
        xx = 0
        if (i > 0)
            xx = choose(-2, 0, 2)
        scr_sbo(ht, (6 + xx), ((25 + (i * 22)) + value), 0)
        scr_sbo(ht, (-6 + xx), ((25 + (i * 22)) + value), 0)
        scr_sbo((ht + 24), (6 + xx), ((25 + (i * 22)) + value), 2)
        scr_sbo((ht + 24), (-6 + xx), ((25 + (i * 22)) + value), 2)
        if (ht == 30)
            value += 5
        if (ht == 40)
            value += 10
        if (ht == 60)
            value += 20
    }
    alarm[1] = 58
}
if (s_type == 3)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    global.idealborder[0] = 170
    global.idealborder[1] = 470
    global.idealborder[2] = (global.idealborder[3] - 110)
    obj_heart.x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 5)
    obj_heart.y = (global.idealborder[3] - 15)
    for (i = 0; i < 8; i += 1)
    {
        scr_sbo(15, 5, (25 + (i * 25)), 0)
        scr_sbo(15, -5, (25 + (i * 25)), 0)
        scr_sbo(40, 5, (25 + (i * 25)), 2)
        scr_sbo(40, -5, (25 + (i * 25)), 2)
    }
    alarm[1] = 52
}
if (s_type == 4)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    sd = choose(1, -1)
    if (sd == 1)
        obj_heart.x = (global.idealborder[0] + 20)
    else
        obj_heart.x = (global.idealborder[1] - 20)
    obj_heart.y = (global.idealborder[3] - 15)
    global.idealborder[2] = (global.idealborder[3] - 110)
    scr_sbo(55, (-12 * sd), 11, 0)
    scr_sbo(55, (-12 * sd), 13, 0)
    scr_sbo(55, (-12 * sd), 15, 0)
    scr_sbo(55, (-12 * sd), 17, 0)
    scr_sbo(55, (-12 * sd), 19, 0)
    scr_sbo(55, (-12 * sd), 21, 0)
    scr_sbo(55, (-12 * sd), 23, 0)
    scr_sbo(55, (-12 * sd), 25, 0)
    scr_sbo(55, (-12 * sd), 27, 0)
    scr_sbo(55, (-12 * sd), 29, 0)
    scr_sbo(55, (-12 * sd), 31, 0)
    scr_sbo(15, (-12 * sd), 33, 0)
    scr_sbo(15, (-12 * sd), 35, 0)
    scr_sbo(15, (-12 * sd), 37, 0)
    scr_sbo(15, (-12 * sd), 39, 0)
    scr_sbo(15, (-12 * sd), 41, 0)
    scr_sbo(15, (-12 * sd), 43, 0)
    scr_sbo(15, (-12 * sd), 45, 0)
    scr_sbo(15, (-12 * sd), 47, 0)
    scr_sbo(15, (-12 * sd), 49, 0)
    scr_sbo(15, (-12 * sd), 51, 0)
    alarm[1] = 47
}
if (s_type == 5)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    obj_heart.vspeed = 1
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    global.idealborder[2] = (global.idealborder[3] - 110)
    obj_heart.x = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    obj_heart.y = (global.idealborder[3] - 90)
    d = choose(1, -1)
    scr_sbo(75, (8 * d), 27, 2)
    scr_sbo(65, (-8 * d), 42, 0)
    scr_hplat(70, 0, 0, 20)
    bone.x += 8
    scr_hplat(30, 0, 0, 20)
    bone.x += 8
    for (i = 0; i < 30; i += 1)
        instance_create((global.idealborder[0] + (i * 16)), (global.idealborder[3] - 20), obj_bonewall)
    alarm[1] = 45
}
if (s_type == 6)
{
    obj_heart.movement = 1
    obj_heart.sprite_index = spr_heart_battle_pl
    obj_heart.speed = 0
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    hwd = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    hht = (global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2))
    obj_heart.x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 8)
    obj_heart.y = ((global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2)) - 8)
    chance = choose(0, 1)
    if (chance == 0)
    {
        gb = instance_create(0, 0, obj_gasterblaster)
        gb.idealrot = 90
        gb.idealx = (global.idealborder[0] - 50)
        gb.idealy = hht
        gb.image_xscale = 2
        gb.image_yscale = 2
        gb = instance_create(640, 480, obj_gasterblaster)
        gb.idealrot = -90
        gb.idealx = (global.idealborder[1] + 50)
        gb.idealy = hht
        gb.image_xscale = 2
        gb.image_yscale = 2
        gb = instance_create(0, 0, obj_gasterblaster)
        gb.idealrot = 0
        gb.idealx = hwd
        gb.idealy = (global.idealborder[2] - 60)
        gb.image_xscale = 2
        gb.image_yscale = 2
        gb = instance_create(640, 480, obj_gasterblaster)
        gb.idealrot = 180
        gb.idealx = hwd
        gb.idealy = (global.idealborder[3] + 60)
        gb.image_xscale = 2
        gb.image_yscale = 2
        obj_gasterblaster.pause = (18 - laser_d)
        obj_gasterblaster.terminal = 8
        with (obj_gasterblaster)
            x = idealx
        with (obj_gasterblaster)
            y = idealy
        with (obj_gasterblaster)
            image_angle = idealrot
    }
    if (chance == 1)
    {
        gb = instance_create(0, 0, obj_gasterblaster)
        gb.idealrot = 45
        gb.idealx = (global.idealborder[0] - 50)
        gb.idealy = (global.idealborder[2] - 50)
        gb.image_xscale = 2
        gb.image_yscale = 2
        gb = instance_create(640, 0, obj_gasterblaster)
        gb.idealrot = -45
        gb.idealx = (global.idealborder[1] + 50)
        gb.idealy = (global.idealborder[2] - 50)
        gb.image_xscale = 2
        gb.image_yscale = 2
        gb = instance_create(0, 480, obj_gasterblaster)
        gb.idealrot = 135
        gb.idealx = (global.idealborder[0] - 50)
        gb.idealy = (global.idealborder[3] + 50)
        gb.image_xscale = 2
        gb.image_yscale = 2
        gb = instance_create(640, 480, obj_gasterblaster)
        gb.idealrot = -135
        gb.idealx = (global.idealborder[1] + 50)
        gb.idealy = (global.idealborder[3] + 50)
        gb.image_xscale = 2
        gb.image_yscale = 2
        obj_gasterblaster.pause = (20 - laser_d)
        obj_gasterblaster.terminal = 8
        with (obj_gasterblaster)
            x = idealx
        with (obj_gasterblaster)
            y = idealy
        with (obj_gasterblaster)
            image_angle = idealrot
    }
    alarm[1] = (37 - laser_d)
}
if (s_type == 7)
{
    obj_heart.movement = 1
    obj_heart.sprite_index = spr_heart_battle_pl
    obj_heart.speed = 0
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    hwd = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    hht = (global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2))
    obj_heart.x = ((global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2)) - 8)
    obj_heart.y = ((global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2)) - 8)
    dd = choose(-1, 1)
    if (dd == -1)
    {
        obj_heart.x = (global.idealborder[0] + 20)
        global.idealborder[1] += 60
    }
    if (dd == 1)
    {
        obj_heart.x = (global.idealborder[1] - 20)
        global.idealborder[0] -= 60
    }
    rr = choose(-1, 1)
    for (i = 0; i < 16; i += 1)
    {
        scr_sbo((105 - ((sin((i / 3)) * 28) * rr)), (10 * dd), (16 + (i * 2)), 2)
        bone.siner = (i * 3)
        scr_sbo((60 - ((sin((i / 3)) * 28) * rr)), (10 * dd), (16 + (i * 2)), 0)
        bone.siner = (i * 3)
    }
    alarm[1] = 52
}
if (s_type == 8)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    global.idealborder[0] = 120
    global.idealborder[1] = 520
    global.idealborder[2] = (global.idealborder[3] - 110)
    sd = choose(1, -1)
    if (sd == 1)
        obj_heart.x = (global.idealborder[1] - 40)
    else
        obj_heart.x = (global.idealborder[0] + 40)
    obj_heart.y = (global.idealborder[3] - 15)
    for (i = 0; i < 10; i += 1)
    {
        scr_sbo(20, (4 * sd), (-5 + (i * 19)), 0)
        scr_sbo(28, (-4 * sd), (-5 + (i * 19)), 2)
    }
    alarm[1] = 57
}
if (s_type == 50)
{
    obj_heart.movement = 2
    with (obj_heart)
        jumpstage = 2
    obj_heart.sprite_index = spr_heartblue
    obj_heart.speed = 0
    obj_heart.vspeed = 1
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    hwd = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    hht = (global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2))
    obj_heart.x = (hwd - 8)
    obj_heart.y = (global.idealborder[3] - 15)
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 0
    bs.warning = 18
    bs.height = 50
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 2
    bs.warning = 18
    bs.height = 50
    alarm[1] = 27
}
if (s_type == 51)
{
    obj_heart.movement = 12
    obj_heart.sprite_index = spr_heartblue_u
    obj_heart.speed = 0
    obj_heart.vspeed = -2
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    hwd = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    hht = (global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2))
    obj_heart.x = (global.idealborder[0] + 15)
    obj_heart.y = (global.idealborder[2] + 10)
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 2
    bs.warning = 19
    bs.height = 50
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 3
    bs.warning = 19
    bs.height = 50
    alarm[1] = 27
}
if (s_type == 52)
{
    obj_heart.speed = 0
    obj_heart.movement = 11
    obj_heart.sprite_index = spr_heartblue_r
    obj_heart.hspeed = 2
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    hwd = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    hht = (global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2))
    obj_heart.x = (global.idealborder[1] - 15)
    obj_heart.y = (global.idealborder[3] - 15)
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 0
    bs.warning = 19
    bs.height = 50
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 1
    bs.warning = 19
    bs.height = 50
    alarm[1] = 27
}
if (s_type == 53)
{
    obj_heart.speed = 0
    obj_heart.movement = 13
    obj_heart.sprite_index = spr_heartblue_l
    obj_heart.hspeed = -2
    global.idealborder[0] = 240
    global.idealborder[1] = 400
    global.idealborder[2] = (global.idealborder[3] - 160)
    hwd = (global.idealborder[0] + ((global.idealborder[1] - global.idealborder[0]) / 2))
    hht = (global.idealborder[2] + ((global.idealborder[3] - global.idealborder[2]) / 2))
    obj_heart.x = (global.idealborder[0] + 10)
    obj_heart.y = global.idealborder[2] == (hht - 8)
    bs = instance_create(0, 0, obj_bonestab)
    bs.dir = 3
    bs.warning = 19
    bs.retain = 10
    bs.height = 50
    alarm[1] = 22
    with (obj_sansb_body)
    {
        x = 320
        lac = 49
        alarm[5] = 20
    }
    instance_destroy()
    return;
}
