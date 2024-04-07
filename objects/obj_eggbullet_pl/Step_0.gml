image_angle = direction
if collision_rectangle(x, y, (x + sprite_width), (y + sprite_width), obj_heartshot, 0, 1)
    instance_destroy()
if (y > room_height)
    instance_destroy()
