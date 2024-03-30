slot = floor(random(6))
myx = (global.idealborder[0] + (((global.idealborder[1] - global.idealborder[0]) / 6) * slot))
myy = (global.idealborder[2] - 20)
iii = instance_create(myx, myy, blt_gravbullet)
if instance_exists(iii)
{
    if ((obj_heart.x + 8) < myx)
        iii.hspeed = -0.5
    if ((obj_heart.x + 8) > myx)
        iii.hspeed = 0.5
    iii.sprite_index = spr_circlebullet_noc
    iii.dmg = global.monsteratk[myself]
}
alarm[0] = firingspeed
