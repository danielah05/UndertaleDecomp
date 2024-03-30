type = 2
s_buffer = 10
o_sound = 0
c_sound = 0
s_sound = 0
open = -1
ox = 0
anim = 0
red = 0
yel = 0
gre = 0
blu = 0
if (FL_MemoryHeadStatus == 3)
    red = 1
if (FL_SnowyAmalgamEvent == 3)
    blu = 1
if (FL_ShowerCurtainAmalgamEvent == 3)
    gre = 1
if (FL_BedAmalgamEvent == 3)
    yel = 1
if (room == room_truelab_elevator)
{
    if (global.entrance == 1)
        alarm[0] = 1
    shouldopen = 0
    type = 0
    FL_CompletedTrueLab = 1
    with (obj_mainchara)
        image_blend = merge_color(c_gray, c_white, 0.3)
}
if (room == room_truelab_hub && x < ((room_width * 2) / 3))
{
    shouldopen = 0
    type = 1
    if (red == 1 && blu == 1 && gre == 1 && yel == 1)
        shouldopen = 1
    FL_CompletedTrueLab = 1
    with (obj_mainchara)
        image_blend = merge_color(c_gray, c_white, 0.3)
}
if (room == room_truelab_hub && x > ((room_width * 2) / 3))
{
    shouldopen = 0
    type = 2
    if (red == 1)
        shouldopen = 1
    if (global.entrance == 20)
        open = 1
}
s1 = instance_create(x, (y + 40), obj_solidsmall)
s2 = instance_create((x + 20), (y + 40), obj_solidsmall)
myinteract = 0
if (global.entrance == 19)
    alarm[0] = 1
