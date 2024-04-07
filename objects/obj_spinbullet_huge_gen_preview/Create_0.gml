image_alpha = 0
offon = 0
x = (obj_vsflowey_heart.x + 8)
y = (obj_vsflowey_heart.y + 8)
if ((y + 60) > room_height)
    y -= ((y + 60) - room_height)
bonus = 0
if (instance_number(object_index) == 1)
    bonus = 3
alarm[2] = 2
snd_stop(mus_sfx_a_target)
snd_play(mus_sfx_a_target)
