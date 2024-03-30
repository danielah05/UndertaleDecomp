g = instance_create((x + 15), (y + 10), obj_incendiarybomb)
if instance_exists(g)
    g.dmg = dmg
alarm[0] = 12
pop = scr_monstersum()
if (pop > 1)
    alarm[0] = 18
