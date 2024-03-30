image_alpha = 0.2
active = 4
friction = 0.1
alarm[3] = (30 + random(4))
ramt = (36 + floor(random(9)))
r = (sprite_width / 2)
rot = random(360)
goalx = (obj_mainchara.x + 7)
goaly = (obj_mainchara.y + 15)
if (room == room_water9)
    goalx = (obj_mainchara.x + 300)
gax = (-2 + random(4))
move_towards_point((goalx + gax), goaly, 0.2)
idealrot = direction
speed = 0
direction = random(360)
speed = 3.2
move = 0
stop = 0
i = 0
while ((i * 2) < ramt)
{
    stop += (ramt - (i * 2))
    i += 1
}
rot = ((idealrot - stop) - 12)
col = 0
