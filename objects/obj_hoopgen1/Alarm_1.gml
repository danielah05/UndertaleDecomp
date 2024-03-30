iii = instance_create(x, y, blt_hoopbullet1)
if instance_exists(iii)
{
    iii.dmg = global.monsteratk[myself]
    iii.bullettype = 1
}
