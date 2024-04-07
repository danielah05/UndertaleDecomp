alarm[0] = rate
chostx = ((global.idealborder[0] + 8) + random(120))
sum = scr_monstersum()
if (sum == 1)
    instance_create(chostx, (global.idealborder[3] + 10), blt_stalk1)
if (sum > 1)
    instance_create(chostx, (global.idealborder[2] - 30), blt_stalk1)
