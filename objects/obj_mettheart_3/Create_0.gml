s = 0
sf = 40
sp = 15
s2 = 0
sf2 = 40
s3 = 88
image_speed = 0
lightning_timer = 20
shake = 0
memx = x
memy = y
life = 700
movetype = 0
i = 0
num = 2
repeat num
{
    kid[i] = instance_create(x, y, obj_bulletbomb)
    greg = degtorad(((i * 360) / num))
    kid[i].x = ((x + (sin(greg) * sf2)) - 14)
    kid[i].y = ((y + (cos(greg) * sf2)) - 15)
    i += 1
}
