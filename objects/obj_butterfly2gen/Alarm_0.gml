alarm[0] = (7 + random(3))
blt = instance_create((obj_heart.x - 40), (global.idealborder[3] - 4), blt_butterfly2)
if instance_exists(blt)
    blt.dmg = global.monsteratk[myself]
blt = instance_create((obj_heart.x + 40), (global.idealborder[3] - 4), blt_butterfly2)
if instance_exists(blt)
    blt.dmg = global.monsteratk[myself]
