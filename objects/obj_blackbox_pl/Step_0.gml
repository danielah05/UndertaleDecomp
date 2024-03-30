if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_heart, 0, 1)
    event_user(11)
if collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
{
    if instance_exists(obj_ratingsmaster)
        global.ratings += 20
    g = collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
    snd_play(snd_mtt_burst)
    with (g)
        instance_destroy()
    bp = instance_create(x, y, obj_brokenpiece)
    if instance_exists(bp)
        bp.sprite_index = sprite_index
    instance_destroy()
}
s += 1
x = (xstart + (sin((s / sp)) * sf))
