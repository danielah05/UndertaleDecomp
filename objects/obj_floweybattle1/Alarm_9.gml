if (conversation <= 15)
{
    snd_stop(snd_floweylaugh)
    global.hshake = 3
    global.shakespeed = 1.5
    global.vshake = 3
    snd_play(snd_power)
    global.hp = global.maxhp
    instance_create(0, 0, obj_shaker)
    if instance_exists(obj_fakepellet)
        obj_fakepellet.x = -800
    conversation = 16
    image_speed = 0
    instance_create((x + 200), (y + 10), obj_torielflame_X)
    alarm[10] = 60
}
