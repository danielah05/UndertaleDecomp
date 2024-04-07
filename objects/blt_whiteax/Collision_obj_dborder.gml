vspeed = 0
hspeed = 0
gravity = 0
x = xprevious
y = yprevious
alarm[1] = 15
if instance_exists(obj_shaker)
{
    with (obj_shaker)
        instance_destroy()
}
snd_play(snd_noise)
global.hshake = 3
global.shakespeed = 2
global.vshake = 0
instance_create(0, 0, obj_shaker)
if (scr_monstersum() == 1)
    alarm[1] = 4
