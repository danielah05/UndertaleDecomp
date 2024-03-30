ch = choose(0, 1)
if (ch == 0)
    instance_create(((global.idealborder[0] - random((global.idealborder[0] - 50))) - 50), (250 - random(200)), obj_meteorbullet)
else
    instance_create(((global.idealborder[0] + random((c_borderwidth(0) - 150))) - 60), ((global.idealborder[2] - 200) - random(50)), obj_meteorbullet)
alarm[2] = 3
sum = scr_monstersum()
if (sum > 1)
    alarm[2] = 6
