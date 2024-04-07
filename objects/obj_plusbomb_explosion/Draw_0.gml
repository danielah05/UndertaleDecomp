xbefore = ceil((x / 20))
xafter = ceil(((room_width / 20) - (x / 20)))
ybefore = ceil((y / 20))
yafter = ceil(((room_height / 20) - (y / 20)))
for (i = 0; i < (ybefore + 1); i += 1)
    draw_sprite(spr_plusbomb_verblast, anim, x, ((y - 20) - (i * 20)))
for (i = 0; i < (yafter + 1); i += 1)
    draw_sprite(spr_plusbomb_verblast, anim, x, ((y + 20) + (i * 20)))
for (i = 0; i < (xbefore + 1); i += 1)
    draw_sprite(spr_plusbomb_horblast, anim, ((x - 20) - (i * 20)), y)
for (i = 0; i < (xafter + 1); i += 1)
    draw_sprite(spr_plusbomb_horblast, anim, ((x + 20) + (i * 20)), y)
draw_sprite(spr_plusbomb_coreblast, anim, x, y)
anim += 1
if (anim > 1 && anim < 3)
{
    g = 0
    if collision_rectangle(0, (y + 4), room_width, (y + 16), obj_heart, 0, 1)
        g = 1
    if collision_rectangle((x + 4), 0, (x + 16), room_height, obj_heart, 0, 1)
        g = 1
    if (g == 1)
        event_user(11)
}
if (anim >= 7)
    instance_destroy()
