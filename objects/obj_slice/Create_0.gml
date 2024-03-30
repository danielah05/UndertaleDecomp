image_speed = (0.5 - (global.stretch / 4))
image_xscale = ((global.stretch * 2) - 0.5)
image_yscale = ((global.stretch * 2) - 0.5)
x -= ((image_xscale - 1) * (sprite_width / 2))
y -= ((image_yscale - 1) * (sprite_height / 2))
snd_play(snd_laz)
if (image_speed == 0)
    image_speed = 0.1
global.damagetimer = (((1 / image_speed) * image_number) + 3)
