with (obj_heart)
{
    visible = false
    movement = -1
    x = 320
    y = 308
}
bordercon = 0
idealborder = 1
if (!instance_exists(obj_hearthalf))
{
    heart_l = instance_create(320, 308, obj_hearthalf)
    heart_l.side = 0
    heart_l.image_blend = global.joycon_color[0]
    heart_r = instance_create(320, 308, obj_hearthalf)
    heart_r.side = 1
    heart_r.image_blend = global.joycon_color[1]
    with (obj_hearthalf)
        border_draw = 0
}
