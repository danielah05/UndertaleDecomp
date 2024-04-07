i = 0
repeat (3)
{
    blt[i] = instance_create(((global.idealborder[0] + 10) + (i * 55)), (global.idealborder[3] - 60), blt_potentiallyblue)
    blt[i].dmg = 7
    blt[i].sprite_index = spr_gyftbullet
    blt[i].image_speed = 0
    blt[i].sinex = (-50 + (i * 50))
    blt[i].x = ((((sin(((blt[i].sinex / 100) * pi)) * ((global.idealborder[1] - global.idealborder[0]) - 45)) / 2) + global.idealborder[0]) + 67)
    blt[i].xstar = blt[i].x
    i += 1
}
bltx = floor(random(3))
alarm[0] = 5
siner = 0
