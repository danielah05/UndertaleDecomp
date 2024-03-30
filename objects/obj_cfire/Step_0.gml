r -= rspeed
ang += angspeed
if (r <= 0.5)
    instance_destroy()
x = (centerx + lengthdir_x(r, ang))
y = (centery + lengthdir_y(r, ang))
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    event_user(0)
