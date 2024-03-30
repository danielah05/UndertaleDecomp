image_xscale = 0.5
image_yscale = 0.5
image_angle = random(360)
image_alpha = 1
aa = (random(6) - random(6))
hspeed = (random(1) - random(1))
vspeed = (random(1) - random(1))
image_speed = 0
image_index = random(40)
if audio_is_playing(snd_swallow)
    snd_stop(snd_swallow)
snd_play(snd_swallow)
