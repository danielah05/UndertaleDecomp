if instance_exists(king)
{
    move_towards_point(king.x, king.y, (1 + random(2)))
    direction += (random(20) - random(20))
    alarm[0] = 15
}
else
    instance_destroy()
