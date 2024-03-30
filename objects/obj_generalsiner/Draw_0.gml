if (drawngr == 1)
    sprite_delete(gr)
gr = sprite_create_from_screen_x(xx, yy, width, (obj_uborder.y - yy), false, false, 0, 0)
sprite_index = gr
if (global.debug == true)
{
    if keyboard_check(vk_space)
    {
        if keyboard_check_pressed(vk_right)
            qq += 0.2
        if keyboard_check_pressed(vk_left)
            qq -= 0.2
        if keyboard_check_pressed(vk_down)
            ww -= 1
        if keyboard_check_pressed(vk_up)
            ww += 1
    }
}
scr_waver_height(qq, ww)
drawngr = 1
idealww2 = (idealww + random(6))
if (ww > idealww2)
    ww -= 0.5
if (ww < idealww2)
    ww += 0.5
if (idealww == 0.1 && ww < 2)
    instance_destroy()
