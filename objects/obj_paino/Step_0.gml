num = 0
if (obj_time.left && num == 0)
    num += 1
if (obj_time.down && num == 0)
    num += 2
if (obj_time.right && num == 0)
    num += 3
if (obj_time.up && num == 0)
    num += 4
if (buffer < 1)
{
    if control_check_pressed(InteractButton)
    {
        justplayed[num] = 6
        played[num] = 20
        caster_play(p[num], 0.5, 1.13)
        for (i = 29; i > 0; i -= 1)
            pp[i] = pp[(i - 1)]
        pp[0] = num
    }
}
for (i = 0; i < 10; i += 1)
{
    justplayed[i] -= 1
    played[i] -= 1
}
global.interact = 1
buffer -= 1
if (control_check(CancelButton) == false)
    coff = 0
if (buffer < 0)
{
    if control_check(CancelButton)
        coff += 1
}
if (coff > 1)
{
    global.interact = 0
    instance_destroy()
}
