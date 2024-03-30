if (y > (global.idealborder[2] - 80) && flash == false)
{
    sprite_index = spr_tinydancemett_tell
    flash = true
}
if (flash == true)
{
    timer += vspeed
    image_speed = (timer / 60)
    if (timer > 60)
        flash = 2
}
if (flash == 2)
{
    image_index = 0
    sprite_index = spr_tinydancemett
    flash = 3
    image_speed = 0.5
}
if (flash == 3)
{
    if (image_index == 2)
        flash = 4
}
if (flash == 4)
{
    i = 0
    repeat (2)
    {
        lt = instance_create((x + 10), (y + 10), obj_kissybullet_pl)
        lt.speed = 1
        lt.sprite_index = spr_tinysparkle
        lt.direction = (i * 180)
        lt.vspeed = -1
        lt.gravity = (0.1 + random(0.05))
        lt.hspeed += ((hspeed + random(0.5)) - 0.25)
        i += 1
    }
    flash = 5
}
if (flash == 5)
{
    if (image_index == 6)
        flash = 6
}
if (flash == 6)
{
    repeat (1)
    {
        lt = instance_create((x + 10), (y + 10), obj_kissybullet_pl)
        lt.speed = 2
        lt.sprite_index = spr_tinysparkle
        lt.direction = ((i * 180) + 90)
        lt.vspeed = ((-1.5 + random(0.5)) - 0.25)
        lt.gravity = (0.1 + random(0.05))
        lt.hspeed += ((hspeed + random(0.5)) - 0.25)
        i += 1
    }
    flash = 9
}
if (flash == 9)
{
    flash = 10
    alarm[4] = 40
}
if (y > room_height)
    instance_destroy()
if collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
{
    g = collision_rectangle((x + 2), (y + 2), (x + 22), (y + 22), obj_heartshot, 0, 1)
    with (g)
        instance_destroy()
    bp = instance_create((x - 15), (y - 6), obj_brokenpiece)
    bp.sprite_index = sprite_index
    bp.image_index = image_index
    bp.depth = (depth + 1)
    instance_destroy()
}
siner += 1
x = (xstart + (sin((siner / 6)) * 10))
