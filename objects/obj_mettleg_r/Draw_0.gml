anim += 0.25
if (on == 0)
    image_blend = c_white
if (on == 1)
    image_blend = c_yellow
draw_sprite_ext(sprite_index, image_index, x, y, -1, 1, 0, image_blend, 1)
if collision_rectangle(x, (y + 1), ((x - sprite_width) + 5), (y + 20), obj_heartshot, 0, 1)
{
    g = collision_rectangle(x, (y + 1), ((x - sprite_width) + 5), (y + 20), obj_heartshot, 0, 1)
    with (g)
        instance_destroy()
    if instance_exists(obj_ratingsmaster)
    {
        snd_play(snd_swallow)
        global.ratings += 5
    }
    if (on == 0)
        on = 1
    else
        on = 0
}
if (on == 1)
{
    s += 1
    x = ((xinit + sprite_width) + (sin((s / sp)) * sf))
    if (c == 1)
        x = ((xinit + sprite_width) + (cos((s / sp)) * sf))
}
