draw_set_color(c_white)
if (con == 1)
{
    obj_uborder.instant = 1
    eye = 1
    con = 2
    alarm[4] = 20
    event_user(1)
    con = 4
    alarm[4] = 20
}
if (con == 4)
{
    mcornerx -= 2
    mcornery -= 3
    mcornerx2 += 2
    mcornery2 -= 3
}
if (con == 5)
{
    con = 5.1
    alarm[4] = 8
}
if (con == 6.1)
{
    con = 6
    alarm[4] = 8
}
if (con == 6)
{
    mcornery -= 1
    mcornery2 -= 1
    global.idealborder[2] -= 2
}
if (con == 7)
{
    con = 8
    alarm[4] = 8
}
if (con == 9)
{
    if (global.idealborder[2] < 330)
    {
        mcornery += 8
        mcornery2 += 8
        global.idealborder[2] += 20
        if (obj_heart.y < (global.idealborder[2] + 4))
            obj_heart.y = (global.idealborder[2] + 4)
    }
    else
    {
        global.idealborder[2] = 340
        con = 10
        alarm[4] = 10
        yy = global.idealborder[2]
        yy2 = global.idealborder[3]
        xx = mcornerx
        xx2 = mcornerx2
    }
}
if (con == 10)
{
    mcornerx = ((xx + random(2)) - 2)
    mcornerx2 = ((xx2 + random(2)) - 2)
    global.idealborder[2] = ((yy + random(2)) - 2)
    if (obj_heart.y < (global.idealborder[2] + 4))
        obj_heart.y = (global.idealborder[2] + 4)
}
if (con == 11)
{
    if (times >= maxtimes)
        con = 50
    if (times < maxtimes)
    {
        con = 12
        obj_amalgam_tooth.con = 10
        obj_amalgam_tooth.alarm[2] = 1
    }
}
if (con == 12)
{
    if (global.idealborder[2] > 260)
    {
        mcornery -= 8
        mcornery2 -= 8
        global.idealborder[2] -= 20
        if (obj_heart.y < (global.idealborder[2] + 4))
            obj_heart.y = (global.idealborder[2] + 4)
    }
    else
    {
        event_user(1)
        times += 1
        global.idealborder[2] = 250
        con = 5.1
        alarm[4] = 20
        if (miss == 10 || miss == 0)
            alarm[4] = 26
        yy = global.idealborder[2]
        yy2 = global.idealborder[3]
        xx = mcornerx
        xx2 = mcornerx2
    }
}
if (con == 50)
{
    eye = 0
    obj_amalgam_tooth.con = 10
    obj_amalgam_tooth.alarm[2] = 1
    con = 51
    alarm[4] = 15
}
global.border = 9999
if (con == 51)
{
    if (global.idealborder[2] > 260)
        global.idealborder[2] -= 10
    else
    {
        global.idealborder[2] = 250
        obj_uborder.instant = 0
    }
    if (mcornerx < (global.idealborder[0] - 5))
        mcornerx += 4
    else
        mcornerx = global.idealborder[0]
    if (mcornery < (global.idealborder[2] - 5))
        mcornery += 4
    else
        mcornery = global.idealborder[2]
    if (mcornerx2 > (global.idealborder[1] + 5))
        mcornerx2 -= 4
    else
        mcornerx2 = global.idealborder[1]
    if (mcornery2 < (global.idealborder[2] - 5))
        mcornery2 += 4
    else
        mcornery2 = global.idealborder[2]
}
if (eye == 1)
{
    if (eyestretch < 1)
        eyestretch += 0.05
    else
        eyestretch = 1
}
if (eye == 0)
{
    if (eyestretch > 0)
        eyestretch -= 0.1
    else
        eyestretch = 0
}
draw_sprite_ext(spr_amalgam_eye, 0, (global.idealborder[0] + 120), (global.idealborder[2] - 80), 1, eyestretch, 0, c_white, 1)
draw_line_width(mcornerx, mcornery, global.idealborder[0], global.idealborder[2], 3)
draw_line_width(mcornerx, mcornery, global.idealborder[0], global.idealborder[3], 3)
draw_line_width(mcornerx2, mcornery2, global.idealborder[1], global.idealborder[2], 3)
draw_line_width(mcornerx2, mcornery2, global.idealborder[1], global.idealborder[3], 3)
