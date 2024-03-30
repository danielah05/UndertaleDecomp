instance_create((x + 14), (y + 14), obj_sunbullet)
alarm[2] = 1
sum = scr_monstersum()
if (sum > 1)
    alarm[2] = choose(3)
