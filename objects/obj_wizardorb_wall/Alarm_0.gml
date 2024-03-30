alarm[0] = 8
cross = instance_create((x + 10), (y + 10), obj_crosszap)
cross.speed = 3.5
if (distance_to_point(obj_heart.x, obj_heart.y) > 190)
    cross.speed = 5.5
pop = scr_monstersum()
cross.direction += (15 - random(30))
cross.friction = 0.015
cross.exist = 200
cross.dmg = dmg
if (pop > 1)
{
    cross.direction += (10 - random(20))
    alarm[0] = 15
    cross.speed = 2.8
}
if (alt == 1)
{
    cross.friction = 0.01
    cross.speed = 3
}
