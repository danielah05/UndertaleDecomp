s = 0
sf = 30
sp = 20
s2 = 0
sf2 = 30
image_speed = 0
lightning_timer = 20
shake = 0
memx = x
memy = y
life = 800
movetype = 0
i = 0
num = 8
repeat num
{
    kid[i] = instance_create(x, y, obj_bulletblocker)
    greg = degtorad(((i * 360) / num))
    if instance_exists(kid[i])
    {
        kid[i].x = ((x + (sin(greg) * sf2)) - 10)
        kid[i].y = ((y + (cos(greg) * sf2)) - 10)
    }
    i += 1
}
