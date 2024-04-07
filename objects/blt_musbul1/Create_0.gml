dmg = 7
image_speed = 0.2
with (obj_shyren)
{
    if (emotion == 0)
    {
        i = choose(0, 1, 2)
        caster_play(badnote[i], 0.5, 0.7)
    }
    else
    {
        i = floor(random(6))
        caster_play(note[i], 1, 1)
    }
}
if (obj_shyren.emotion == 0)
{
    speed = 4
    dep = 1
    detune = 3
    dspeed = 1
}
if (obj_shyren.emotion >= 1)
{
    dep = 0
    detune = 2
    dspeed = 12
    speed = 7
}
direction = (random(60) + 250)
siner = random(100)
gravity_direction = choose(0, 45, 90, 45, 180)
alarm[0] = (40 + random(20))
