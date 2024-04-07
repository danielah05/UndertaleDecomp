if (image_index >= 5 && image_index < 6)
{
    if (cutsdone == 0)
    {
        cutsfxN += 1
        cutsfxA[cutsfxN] = cutsfx
        cutsfxA[(cutsfxN - 1)] = cutsfx
        if (cutsfxN > 1)
            caster_stop(cutsfxA[(cutsfxN - 1)])
        caster_play(cutsfxA[cutsfxN], 0.8, 1)
        cutsdone = 1
    }
    if (type[curamt] == 1 && hitted == 0)
    {
        hit = 1
        if (abs((obj_heart.x - obj_heart.xprevious)) < 0.1)
            hit = 0
        if ((!obj_time.left) && (!obj_time.right) && (!obj_time.up) && (!obj_time.down))
            hit = 0
        if (hit == 1)
        {
            event_user(0)
            hitted = 1
        }
    }
    if (type[curamt] == 2 && hitted == 0)
    {
        hit = 1
        if (abs((obj_heart.x - obj_heart.xprevious)) > 0.1)
            hit = 0
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down))
            hit = 0
        if (hit == 1)
        {
            event_user(0)
            hitted = 1
        }
    }
    hitted = 2
}
else
    cutsdone = 0
