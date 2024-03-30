if (con == 1)
{
    if (myspeed > 0)
    {
        if (eo == 0)
            draw_set_color(c_red)
        if (eo == 1)
        {
            draw_set_color(c_yellow)
            snd_play(snd_block2)
        }
        if (eo == 2)
            draw_set_color(c_black)
        draw_rectangle((global.idealborder[1] - 6), (global.idealborder[2] + 6), ((global.idealborder[1] - attacklength) + 6), (global.idealborder[3] - 4), true)
        draw_rectangle((global.idealborder[1] - 7), (global.idealborder[2] + 7), ((global.idealborder[1] - attacklength) + 5), (global.idealborder[3] - 3), true)
        draw_sprite(spr_exclamationpoint, eo, (global.idealborder[1] - (attacklength / 2)), (global.idealborder[2] + 30))
    }
    eo += 1
    if (eo > 2)
        eo = 0
}
if (con == 2)
{
    snd_play(snd_spearrise)
    if (myspeed > 0)
    {
        x = (global.idealborder[0] - sprite_width)
        nowx = x
        myx = 0
    }
    con = 3
}
if (con == 3)
{
    myx += myspeed
    if (myx >= (attacklength - myspeed))
    {
        myx = attacklength
        con = 4
        alarm[4] = 6
        shake = 5
    }
}
if (shake > 0)
    shake -= 1
if (con == 5)
{
    shake = 0
    myx -= myspeed
    if (myx <= 0)
        instance_destroy()
}
if (con >= 3)
{
    for (i = 0; i < 5; i += 1)
    {
        rr = (random(shake) - random(shake))
        draw_sprite_part(sprite_index, image_index, 0, 0, (myx + rr), sprite_height, (global.idealborder[1] - myx), (((global.idealborder[2] + 5) + (i * 30)) + rr))
        if collision_rectangle(global.idealborder[1], ((global.idealborder[2] + 9) + (i * 30)), ((global.idealborder[1] - myx) + 30), ((global.idealborder[2] + 18) + (i * 30)), obj_heart, 0, 1)
            event_user(11)
        if (collision_line(((global.idealborder[1] - myx) + 30), ((global.idealborder[2] + 9) + (i * 30)), ((global.idealborder[1] - myx) + 8), ((global.idealborder[2] + 9) + (i * 30)), obj_heart, false, true) || collision_line(((global.idealborder[1] - myx) + 30), ((global.idealborder[2] + 23) + (i * 30)), ((global.idealborder[1] - myx) + 8), ((global.idealborder[2] + 9) + (i * 30)), obj_heart, false, true))
            event_user(11)
    }
}
