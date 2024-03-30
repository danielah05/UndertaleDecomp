myx = global.monsterinstance[myself].x
myy = global.monsterinstance[myself].y
blt1 = instance_create((myx + 52), (myy + 48), blt_crybullet2)
blt2 = instance_create((myx + 82), (myy + 58), blt_crybullet2)
blt1.dmg = 0
blt2.dmg = 0
alarm[0] = global.firingrate
