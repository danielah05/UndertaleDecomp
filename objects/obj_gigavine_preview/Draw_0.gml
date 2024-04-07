if (active == true)
{
    onoff += 1
    if (onoff > 2)
        onoff = 0
    if (onoff == 0)
        draw_set_color(c_red)
    if (onoff == 1)
        draw_set_color(c_orange)
    if (onoff == 2)
        draw_set_color(c_yellow)
    xxl = lengthdir_x(600, direction)
    yyl = lengthdir_y(600, direction)
    draw_line_width((x - 8), y, ((x + xxl) - 8), (y + yyl), 2)
    draw_line_width((x + 8), y, ((x + xxl) + 8), (y + yyl), 2)
    nowtime += 1
    if (nowtime > maxtime)
    {
        image_angle = direction
        gv = instance_create(x, y, obj_gigavine)
        gv.memorymode = memorymode
        gv.image_angle = image_angle
        if (memorymode == 0)
            instance_destroy()
        else
        {
            active = false
            visible = false
        }
    }
}
