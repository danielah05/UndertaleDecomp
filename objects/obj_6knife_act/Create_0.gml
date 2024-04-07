anger = choose(4, -4)
sp = choose(-1, 1)
image_angle = 0
image_speed = 0
type = 0
for (j = 0; j < 6; j += 1)
{
    for (i = 0; i < 7; i += 1)
    {
        kn = instance_create((((-sprite_width) * 4) + (sprite_width * i)), (((-sprite_width) * 2) + (sprite_width * j)), obj_6knife)
        kn.relx = (kn.xstart - x)
        kn.rely = (kn.ystart - y)
    }
}
with (obj_flowey_bulletmaster)
    soulmax += 90
visible = false
alarm[0] = 1
con = 0
sprite_index = scr_getsprite(sprite_index)
