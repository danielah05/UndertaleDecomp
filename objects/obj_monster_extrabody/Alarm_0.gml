active = true
if (type == 1)
{
    mypart1 = instance_create(x, (y - 4), obj_froghead)
    mypart2 = instance_create(x, (y - 4), obj_froglegs)
}
if (type == 8)
{
    sprite_index = spr_lesserdoge
    mercymod = 0
    depth = 10
    tail = instance_create(x, y, obj_lesserdogetail)
    tail.tailobj = id
    head = instance_create(x, y, obj_lesserdogehead)
    head.tailobj = id
}
if (type == 9)
{
}
if (type == 11)
{
    part1 = obj_drakehead
    part2 = obj_drakebody
    mypart1 = instance_create((x + 18), y, part1)
    mypart2 = instance_create((x + 18), y, part2)
}
if (type == 12)
{
    part1 = obj_gyftrothead
    part2 = obj_gyftrotbody
    part3 = obj_gyftrotgift
    mypart1 = instance_create(x, (y - 6), part1)
    mypart2 = instance_create(x, (y - 6), part2)
    gift[0] = floor(random(7))
    gift[1] = floor(random(7))
    gift[2] = floor(random(7))
    if (gift[1] == gift[0])
        gift[1] += 1
    if (gift[2] == gift[0])
        gift[2] += 1
    if (gift[2] == gift[1])
        gift[2] = 0
    if (gift[2] == gift[0])
        gift[2] += 1
    mypart3 = instance_create(x, (y - 6), part3)
    mypart3.gift = gift[0]
    mypart4 = instance_create(x, (y - 6), part3)
    mypart4.gift = gift[1]
    mypart8 = instance_create(x, (y - 6), part3)
    mypart8.gift = gift[2]
    if (FL_SparedGyftrot == 1)
    {
        with (mypart3)
            visible = false
        with (mypart4)
            visible = false
        with (mypart8)
            visible = false
    }
}
if (type == 13)
{
    part2 = obj_movedogetail
    part3 = obj_movedogearms
    part4 = obj_movedogebody
    part1 = scr_marker((x - 6), (y - 12), spr_movedogeheada)
    part1.image_xscale = 2
    part1.image_yscale = 2
    part1.image_speed = 0.25
    mypart2 = instance_create((x - 6), (y - 12), part2)
    mypart3 = instance_create((x - 6), (y - 12), part3)
    mypart4 = instance_create((x - 6), (y - 12), part4)
}
if (type == 14)
{
    part1 = obj_mandogbody
    part2 = obj_mandogax
    mypart1 = instance_create(x, y, part1)
    mypart2 = instance_create(x, y, part2)
    part1 = obj_womandogbody
    part2 = obj_womandogax
    mypart1 = instance_create(x, y, part1)
    mypart2 = instance_create(x, y, part2)
}
if (type == 15)
    instance_create(x, y, obj_woshbody)
if (type == 16)
{
    ab = instance_create(x, y, obj_aaronbody)
    if (FL_AaronWoshuaEvent == 1)
        ab.sprite_index = spr_aaronbody_bull
}
if (type == 17)
{
    emotion = 0
    if (FL_ShyrenStatus == ShyrenStatus.Encouraged)
        emotion = 1
    part1 = obj_shyrenbody
    mypart1 = instance_create(x, y, part1)
    part1.creator = id
    agent = instance_create(x, (y + 3), obj_agentbody)
}
if (type == 18)
    instance_create(x, y, obj_tembody)
if (type == 19)
{
    msx = instance_create(x, (y + 120), obj_moldsmalx_body)
    global.idealborder[2] = 99999
}
if (type == 20)
    dummy = instance_create((x + 60), (y + 50), obj_maddum_drawer)
if (type == 21)
{
    bara1 = instance_create(x, (y + 22), obj_barabody)
    bara1.headpic = spr_barahead1
    bara2 = instance_create((x + 210), (y + 22), obj_barabody)
    bara2.headpic = spr_barahead2
    bd = 0
}
if (type == 22)
    vulkin = instance_create(x, (y - 10), obj_vulkinbody)
if (type == 23)
{
    graze = 0
    plane = instance_create(x, (y + 10), obj_tsunderplane_body)
    plane.parent = id
}
if (type == 24)
{
    pyrope = instance_create(x, (y + 70), obj_pyropebody)
    pyrope.parent = id
}
if (type == 25)
{
    spider = instance_create((x + 55), y, obj_spiderb_body)
    spider.parent = id
}
if (type == 26)
{
    stare1 = 0
    stare2 = 0
    madjick = instance_create((x + 30), (y + 80), obj_wizardbody)
    madjick.parent = id
}
if (type == 27)
{
    knight = instance_create((x + 50), y, obj_finalknight_body)
    knight.parent = id
}
if (type == 28)
{
    frog = instance_create((x - 10), y, obj_finalfroggit_body)
    frog.parent = id
}
if (type == 29)
{
    knight = instance_create(x, y, obj_whimsalot_body)
    knight.parent = id
}
if (type == 30)
{
    eye = instance_create(x, y, obj_astigmatism_body)
    eye.parent = id
}
if (type == 31)
    aa = instance_create(x, y, obj_memoryhead_body)
if (type == 32)
    aa = instance_create((x - 10), (y - 10), obj_reaperbird_body)
if (type == 33)
{
    aa = instance_create((x - 20), (y + 40), obj_endogeny_body)
    aa.spared = 1
}
if (type == 34)
    aa = instance_create(x, (y - 10), obj_lemonbread_body)
