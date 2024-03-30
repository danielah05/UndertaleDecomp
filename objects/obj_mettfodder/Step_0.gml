if (y > ((global.idealborder[2] - early) - 15) && flash == false)
{
    flash = true
    alarm[4] = 20
}
if (flash == true && early <= 20)
{
    if (vspeed > 1.5)
        vspeed -= 0.15
}
if (early > 20 && y > ((global.idealborder[2] - 20) - 15))
{
    if (vspeed > 1.5)
        vspeed -= 0.15
}
if (flash == 2)
{
    flash = 3
    alarm[4] = 30
}
if (flash == 3)
{
    if (alarm[4] < 26)
        image_speed = 0.5
}
if (flash == 4)
{
    lt = instance_create((x + 10), (y + 10), obj_kissybullet_pl)
    lt.speed = 5
    lt.direction = point_direction(lt.x, lt.y, (obj_heart.x + 10), (obj_heart.y + 10))
    flash = 5
}
if (flash == 5)
{
    flash = true
    alarm[4] = 30
    if (type == 2)
    {
        flash = 9
        if (x < (room_width / 2))
        {
            gravity_direction = 180
            gravity = 0.5
            friction = 0.2
        }
        if (x > (room_width / 2))
        {
            gravity_direction = 0
            gravity = 0.5
            friction = 0.2
        }
    }
}
if (y > room_height)
    instance_destroy()
if collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
{
    g = collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
    with (g)
        instance_destroy()
    snd_play(snd_mtt_burst)
    if instance_exists(obj_ratingsmaster)
        global.ratings += 20
    bp = instance_create((x - 20), (y - 23), obj_brokenpiece)
    bp.sprite_index = sprite_index
    bp.image_index = image_index
    bp.depth = (depth + 1)
    instance_destroy()
}
if (image_index > 16 && image_speed > 0)
{
    image_index = 0
    image_speed = 0
}
