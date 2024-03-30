if (speed < 0.5)
{
    friction = -0.04
    speed += 0.1
    move_towards_point(((xstart - 20) + random(40)), ((ystart - 20) + random(40)), speed)
}
if (speed > 0.5)
    friction = 0.04
gravity = 0.03
gravity_direction = random(360)
alarm[0] = (30 + random(20))
