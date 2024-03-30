sprite_index = global.monstersprite
image_alpha = 0.5
snd_stop(snd_vaporized)
snd_play(snd_vaporized)
for (n = 0; n < 14; n += 1)
{
    j = instance_create((((random((sprite_width / 2)) + (sprite_width / 4)) + x) - 8), (((random((sprite_height / 2)) + (sprite_width / 4)) + y) - 8), obj_dustcloud)
    j.rightside = (((8 + j.x) - x) / (sprite_width / 2))
    j.topside = (((8 + j.y) - y) / (sprite_height / 2))
}
