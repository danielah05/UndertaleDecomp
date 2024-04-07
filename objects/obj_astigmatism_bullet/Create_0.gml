siner = 0
asiner = random(300)
kid = instance_create(x, y, obj_sonbullet)
kid.x = (x + (sin((asiner / 16)) * 14))
kid.y = (y + (cos((asiner / 16)) * 14))
kid2 = instance_create(x, y, obj_sonbullet)
kid2.sprite_index = spr_circlebulletsm_ex
kid2.x = (x + (sin((asiner / 16)) * 28))
kid2.y = (y + (cos((asiner / 16)) * 28))
vspeed = (-1 + random(2))
if (y > (global.idealborder[3] - 50) && vspeed > 0)
{
    vspeed *= -1
    if (abs(vspeed) < 0.3)
        vspeed *= 2
}
if (y < (global.idealborder[2] + 50) && vspeed < 0)
{
    vspeed *= -1
    if (abs(vspeed) < 0.3)
        vspeed *= 2
}
hspeed = (-3 - random(1))
av = ((0.7 + random(0.5)) * choose(1, -1))
image_alpha = 0
off = 0
dmg = 8
image_alpha = 0
sum = scr_monstersum()
factor1 = 22
factor2 = 40
if (sum > 1)
{
    factor1 = 18
    factor2 = 36
    av = ((0.7 + random(0.5)) * choose(1, -1))
}
if (sum > 2)
{
    hspeed = (-2.5 - random(1))
    factor1 = 16
    factor2 = 32
    av = ((0.6 + random(0.5)) * choose(1, -1))
}
