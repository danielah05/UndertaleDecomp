siner += 1
draw_sprite(sprite_index, image_index, x, y)
if (active != 2)
{
    draw_set_alpha(((abs(sin((siner / 3))) / 2) + 0.5))
    if (active == false)
    {
        draw_set_alpha(0.3)
        image_speed = 0
    }
    else
        image_speed = 0.5
    if (blue == 1)
    {
        draw_set_color(c_soulblue)
        sprite_index = spr_lasermachine_b
    }
    if (blue == 2)
    {
        draw_set_color(c_orange)
        sprite_index = spr_lasermachine_o
    }
    ossafe_fill_rectangle((x + 8), (y + 16), (x + 11), (y + 320))
    if (active == true && activebuffer < 0)
    {
        if collision_rectangle((x + 9), (y + 18), (x + 10), (y + 320), obj_mainchara, 0, 1)
            event_user(0)
    }
}
else
    sprite_index = spr_lasermachine_off
draw_set_alpha(1)
if (ex == 1 && instance_exists(OBJ_WRITER) == false)
{
    alarm[3] = 1
    ex = 0
}
activebuffer -= 1
if (active != true)
    activebuffer = 1
