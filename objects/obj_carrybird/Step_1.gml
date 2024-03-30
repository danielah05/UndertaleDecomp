scr_depth(0, 0, 0, 0, 0)
if (carry == 1 && instance_exists(OBJ_WRITER) == false)
{
    if (FL_TruePacifist == false)
        scr_musfadepause(0.05)
    global.interact = 1
    alarm[4] = 20
    carry = 2
    global.phasing = 1
}
if (carry == 2)
    global.interact = 1
if (carry == 3)
{
    voli = 0
    if (FL_TruePacifist == false)
        caster_loop(birdsong, 0.2, 1.1)
    sprite_index = spr_smallbird_fly
    image_speed = 0.25
    hdist = (obj_mainchara.x - x)
    vdist = ((obj_mainchara.y - 10) - y)
    hspeed = (hdist / 30)
    vspeed = (vdist / 30)
    alarm[4] = 30
    carry = 4
}
if (carry == 4)
{
    voli += 0.02
    if (FL_TruePacifist == false)
        caster_set_volume(birdsong, voli)
}
if (carry == 5)
{
    x = obj_mainchara.x
    y = (obj_mainchara.y - 10)
    vspeed = 0
    hspeed = 0
    sinoid = 0
    carry = 6
    alarm[4] = 25
}
if (carry == 7)
{
    vspeed = -0.5
    carry = 8
    alarm[4] = 10
}
if (carry == 9)
{
    clamp_r = 1
    alarm[4] = 100
    carry = 10
    sinoid = 2
}
if (carry == 11)
{
    vspeed = 0
    hspeed = -0.4
    if (right == 1)
        hspeed = 0.4
    carry = 12
    alarm[4] = 360
}
if (right == 0)
{
    if (carry == 12 && x > 100 && alarm[4] < 5)
        alarm[4] += 1
}
if (right == 1)
{
    if (carry == 12 && x < 240 && alarm[4] < 5)
        alarm[4] += 1
}
if (carry == 13)
{
    vspeed = 0.5
    hspeed = 0
    alarm[4] = 100
    carry = 14
}
if (carry == 14 && y < 90 && alarm[4] < 5)
    alarm[4] += 1
if (carry == 14 && y > 90 && alarm[4] > 5)
    alarm[4] -= 1
if (carry == 14)
{
    if (voli > 0)
        voli -= 0.008
    if (FL_TruePacifist == false)
        caster_set_volume(birdsong, voli)
}
if (carry == 15)
{
    if (FL_TruePacifist == false)
        caster_stop(birdsong)
    sinoid = 0
    clamp_r = 0
    carry = 16
    alarm[4] = 20
}
if (carry == 17)
{
    vspeed = 0
    hspeed = 1
    if (right == 1)
        hspeed = -1
    alarm[4] = 30
    carry = 18
    scr_musfaderesume(0.05)
}
if (carry == 19)
{
    hspeed = 0
    vspeed = 1
    alarm[4] = 10
    carry = 20
}
if (carry == 21)
{
    with (obj_mainchara)
        uncan = 0
    vspeed = 0
    x = round(x)
    y = round(y)
    sprite_index = spr_smallbird
    image_speed = 0.25
    carry = 0
    if (right == 0)
        right = 1
    else
        right = 0
    global.phasing = 0
    global.interact = 0
}
if (sinoid == 1)
{
    x += (sin(x) / 2)
    y += (cos(y) / 2)
}
if (sinoid == 2)
{
    x += (random(1) - 0.5)
    y += (random(1) - 0.5)
}
if (clamp_r == 1)
{
    obj_mainchara.x = round(x)
    obj_mainchara.y = round((y + 15))
}
