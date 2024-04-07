centerx = x
centery = y
x = centerx
y = centery
side = choose(1, -1)
strike = 0
if (strike == 0)
{
    num = 0
    direction = 0
    add_dir = random(360)
    maxnum = 10
    trip = 1
    radius = 60
    counter = 0
    spinbullet[0] = 999999
}
if (strike == 1)
{
    num = 0
    direction = 0
    add_dir = random(360)
    maxnum = 46
    trip = 1
    radius = 62
    counter = 0
}
for (var i = 0; i <= maxnum; i += 1)
    spinbullet[i] = 847873482423472384
if ((centery + radius) > room_height)
{
    centery -= ((centery + radius) - room_height)
    y = centery
    add_dir = (20 + random(140))
}
