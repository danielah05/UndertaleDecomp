deg = degtorad(rot)
x1 = (x + (r * cos(deg)))
y1 = (y - (r * sin(deg)))
x2 = x
y2 = y
if (image_alpha < 1 && active != false)
    image_alpha += 0.1
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, image_alpha)
if instance_exists(obj_undynea_actor)
    move = obj_undynea_actor.hspeed
x += (move / 3)
if (active == true)
{
    if collision_rectangle(x1, y1, x2, y2, obj_mainchara, 0, 1)
        col += 1
    else
        col = 0
    if (col == 2)
        event_user(2)
    rot = direction
}
if (active == 4)
{
    rspeed = speed
    rdir = direction
    rot += ramt
    if (ramt > 0)
        ramt -= 2
    else
    {
        ramt = 0
        move_towards_point(((obj_mainchara.x + 7) + gax), (obj_mainchara.y + 15), 0.1)
        idealrot = direction
        rot %= 360
        if ((rot - idealrot) > 12)
            rot -= 4
        if ((rot - idealrot) > 6)
            rot -= 2
        if ((rot - idealrot) > 3)
            rot -= 1
        if ((rot - idealrot) < -3)
            rot += 1
        if ((rot - idealrot) < -6)
            rot += 2
        if ((rot - idealrot) < -12)
            rot += 4
    }
    speed = rspeed
    direction = rdir
}
if (active == false)
{
    image_alpha -= 0.05
    if (image_alpha < 0.01)
        active = 2
}
if (active == 2)
    instance_destroy()
if (y > room_height || x > room_width)
    active = false
