if (aimage == 1)
{
    o = instance_create((x + relx), (y + rely), obj_afterimage_asriel)
    o.sprite_index = sprite_index
    o.image_index = image_index
    o.image_speed = 0
    o.image_alpha = 0.5
    o.depth = (depth + 1)
}
alarm[0] = 1
