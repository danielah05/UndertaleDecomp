centerx = x
centery = y
x = centerx
y = centery
side = choose(1, -1)
num = 0
direction = 0
add_dir = random(360)
maxnum = 20
trip = 1
radius = 50
counter = 0
spinbullet[0] = 999999
for (i = 0; i <= maxnum; i += 1)
    spinbullet[i] = 847873482423472384
if ((centery + radius) > room_height)
{
    centery -= ((centery + radius) - room_height)
    y = centery
    add_dir = (20 + random(140))
}
memx = 0
memy = 0
if instance_exists(obj_vsflowey_heart)
{
    memx = obj_vsflowey_heart.x
    memy = obj_vsflowey_heart.y
}
