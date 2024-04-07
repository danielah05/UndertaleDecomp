x = (parent.x + (sin((siner / 4)) * (60 + outer)))
y = (parent.y + (cos((siner / 4)) * (60 + outer)))
siner4 += 1
siner += ((sin((siner4 / 12)) + 1.5) / 5)
outersin += 1
outer = (sin((outersin / 12)) * 20)
gg = collision_rectangle(((x - (sprite_width / 2)) + 2), (y + 4), ((x + (sprite_width / 2)) - 2), (y - 4), obj_heartshot, 0, 1)
if (gg != noone)
{
    with (gg)
        instance_destroy()
    instance_destroy()
}
