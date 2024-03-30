if (move == 1)
{
    if obj_time.left
    {
        if (x > 0)
        {
            if (obj_flowey_master.darkmode != 0 || x > 108)
                x -= 4
        }
    }
    if obj_time.right
    {
        if (x < (room_width - sprite_width))
        {
            if (obj_flowey_master.darkmode != 0 || x < 512)
                x += 4
        }
    }
    if obj_time.up
    {
        if (y > 0)
        {
            if (obj_flowey_master.darkmode != 0 || y > 268)
                y -= 4
        }
    }
    if obj_time.down
    {
        if (y < (room_height - sprite_height))
            y += 4
    }
}
global.my_inv -= 1
if (global.my_inv > 0)
    image_speed = 0.5
else
{
    image_index = 0
    image_speed = 0
}
if (global.my_hp <= 0 && special == false)
    instance_create(x, y, obj_vsflowey_heartdefeated)
