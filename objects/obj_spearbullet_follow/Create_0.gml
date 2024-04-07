rotspeed = 32
x = ((obj_heart.x - 4) + random(8))
y = ((obj_heart.y - 4) + random(8))
image_alpha = 0
snd_play(snd_spearappear)
offsetdir = point_direction(x, y, obj_heart.x, obj_heart.y)
x += lengthdir_x(140, offsetdir)
y += lengthdir_y(140, offsetdir)
direction = offsetdir
speed = 4
friction = 0.2
dmg = 7
deactivate = 0
if instance_exists(obj_undyne_ex)
    dmg = 11
