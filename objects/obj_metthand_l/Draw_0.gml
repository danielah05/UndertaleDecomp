draw_set_color(c_black)
ossafe_fill_rectangle((segx + 18), (y + 2), (global.idealborder[1] + 2), (y + 18))
draw_set_color(c_white)
ossafe_fill_rectangle((segx + 20), (y + 4), global.idealborder[1], (y + 16))
for (i = (segx + 20); i < global.idealborder[1]; i += 20)
{
    draw_set_color(c_black)
    draw_line_width(i, (y + 2), i, (y + 18), 2)
}
anim += 0.25
if (on == 0)
    draw_sprite(spr_yellowtrigger_pl, anim, (segx + yseg), y)
if (on == 1)
    draw_sprite(spr_yellowtrigger_off_pl, anim, (segx + yseg), y)
draw_sprite(sprite_index, image_index, segx, y)
if collision_rectangle((segx + yseg), y, ((segx + yseg) + 20), (y + 14), obj_heartshot, 0, 1)
{
    snd_play(snd_mtt_burst)
    g = collision_rectangle((segx + yseg), y, ((segx + yseg) + 20), (y + 14), obj_heartshot, 0, 1)
    with (g)
        instance_destroy()
    if (on == 0)
        on = 1
    else
        on = 0
}
if collision_rectangle((segx + 3), (y - 4), global.idealborder[1], (y + 10), obj_heartshot, 0, 1)
{
    g = collision_rectangle((segx + 3), (y - 4), global.idealborder[1], (y + 10), obj_heartshot, 0, 1)
    with (g)
        instance_destroy()
    vspeed += 0.75
    y += 3
    snd_play(snd_swallow)
}
if collision_rectangle((segx + 5), (y + 4), global.idealborder[1], (y + 14), obj_heart, 0, 1)
    event_user(11)
if (on == 1)
{
    if (segx < (global.idealborder[1] + 5))
    {
        if (xm <= 0)
            xm = 2
        xm += 2
        segx += xm
    }
    else
    {
        xm = 0
        segx = (global.idealborder[1] + 5)
    }
}
if (on == 0)
{
    if (segx > segxinit)
    {
        if (xm >= 0)
            xm = -1
        xm -= 1
        segx += xm
    }
    else
    {
        xm = 0
        segx = segxinit
    }
}
s += 1
yseg = (ysegi + (sin((s / sp)) * sf))
