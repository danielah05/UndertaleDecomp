draw_sprite(sprite_index, image_index, x, y)
draw_sprite_ext(sprite_index, image_index, (x - 0.5), (y - 0.5), 1.5, 1.5, 0, c_white, 0.25)
talkcounter -= 1
if (myinteract == 1 && talkcounter < 0)
{
    snd = choose(snd_oddtalk1, snd_oddtalk2)
    snd_play(snd)
    talkcounter = 30
    myinteract = 0
}
