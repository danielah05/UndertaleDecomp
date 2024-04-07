draw_sprite(sprite_index, image_index, x, y)
if (keyboard_check_pressed(vk_left) || control_check_pressed(InteractButton) || control_check_pressed(CancelButton))
{
    if (con > 7 && con < 30)
        con = 30
}
if (con == 5)
{
    depth = 100000
    limbx = 0
    limby = 0
    global.phasing = 1
    global.interact = 1
    siner = 0
    con = 6
    alarm[4] = 20
    xx = (x + 16)
    yy = (y + 11)
    getx = obj_mainchara.x
    gety = obj_mainchara.y
    tox = ((xx - getx) / 20)
    toy = ((yy - gety) / 20)
    ivol = caster_get_volume(global.currentsong)
    vol = ivol
}
if (con == 6)
{
    vol -= 0.05
    caster_set_volume(global.currentsong, vol)
    global.interact = 1
    global.facing = Direction.Right
    obj_mainchara.image_index += 0.25
    obj_mainchara.x += tox
    obj_mainchara.y += toy
}
if (con == 7)
{
    caster_pause(global.currentsong)
    obj_mainchara.image_index = 0
    obj_mainchara.x = floor(obj_mainchara.x)
    obj_mainchara.y = floor(obj_mainchara.y)
    con = 8
    alarm[4] = 150
    alarm[4] = 150
}
if (con == 9)
{
    con = 10
    win = 1
    alarm[4] = 100
    alarm[4] = 100
}
if (con == 11)
{
    con = 12
    alarm[4] = 340
}
if (con == 12)
{
    limbx += 0.1
    limby = (sin((limbx / 4)) * 2)
}
if (con == 13)
{
    con = 13.1
    alarm[4] = 70
}
if (con == 14.1)
{
    con = 14
    alarm[4] = 20
}
if (con == 14)
    limby += 1
if (con == 15)
{
    con = 16
    alarm[4] = 30
}
if (con == 17)
{
    con = 18
    alarm[4] = 8
}
if (con == 18)
{
    tuck = 1
    limby -= 3
}
if (con == 19)
{
    siner = 0
    con = 20
    alarm[4] = 30
}
if (con == 21)
{
    con = 22
    alarm[4] = 15
}
if (con == 22)
{
    limbx += 1
    limby -= 0.8
}
if (con == 23)
{
    con = 24
    alarm[4] = 20
}
if (con == 25)
{
    con = 26
    alarm[4] = 40
}
if (con == 26 || con == 27 || con == 28)
{
    siner += 1
    limby += (sin((siner / 3)) / 1.5)
}
if (con == 27)
{
    win = 0
    con = 28
}
if (con == 30)
{
    caster_resume(global.currentsong)
    depth = 100000
    win = 0
    tuck = 2
    global.facing = Direction.Left
    obj_mainchara.image_speed = 0.25
    obj_mainchara.hspeed = -3
    alarm[4] = 13
    con = 31
}
if (con == 31)
{
    if (vol < ivol)
        vol += 0.08
    else
        vol = ivol
    caster_set_volume(global.currentsong, vol)
}
if (con == 32)
{
    scr_depth()
    obj_mainchara.image_speed = 0
    global.facing = Direction.Down
    obj_mainchara.hspeed = 0
    with (obj_mainchara)
        uncan = 0
    global.interact = 0
    global.phasing = 0
    con = 0
}
if (bedy < 30)
{
    depth = 100
    draw_sprite_ext(obj_mainchara.sprite_index, 0, obj_mainchara.x, obj_mainchara.y, 1, 1, 0, obj_mainchara.image_blend, 1)
}
if (tuck == 1)
{
    bedy -= 4
    if (bedy <= 4)
        bedy = 4
}
if (tuck == 2)
{
    win = 0
    bedy += 4
    if (bedy >= 30)
    {
        bedy = 30
        depth = 100000
        draw_sprite_ext(obj_mainchara.sprite_index, 0, obj_mainchara.x, obj_mainchara.y, 1, 1, 0, obj_mainchara.image_blend, 1)
        tuck = 0
    }
}
if (win == 1)
{
    if (walpha < 1)
        walpha += 0.02
}
else if (walpha > 0)
    walpha -= 0.1
draw_sprite_part(spr_bed_dark_sheet, 0, 0, 0, 46, (39 - bedy), (x + 2), ((y + 13) + bedy))
draw_sprite_ext(spr_watchingman, 0, (x - 20), (y - 15), 1, 1, 0, c_white, walpha)
draw_sprite_part_ext(spr_watchingman_limb, 0, (50 - limbx), 0, limbx, 20, (x - 14), ((y + 20) + limby), 1, 1, c_white, walpha)
