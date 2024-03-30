s += 1
x += (sin((s / sv)) * sf)
if (y > (room_height + 100))
    instance_destroy()
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    event_user(0)
