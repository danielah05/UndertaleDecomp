if (overtype == 1)
{
    newattack = choose(20, 21)
    if (newattack == attackid[1])
        newattack = choose(20, 21)
}
if (overtype == 0)
{
    newattack = choose(1, 2, 3, 4, 5, 6, 7, 8, 9)
    if (newattack == attackid[1] || newattack == attackid[2])
        newattack = choose(1, 2, 3, 4, 5, 6, 7, 8, 9)
    if (newattack == attackid[1] || newattack == attackid[2])
        newattack = choose(1, 2, 3, 4, 5, 6, 7, 8, 9)
}
if (global.battlephase == 0)
{
    newattack = choose(1, 2, 3, 4, 9)
    if (newattack == attackid[1] || newattack == attackid[2])
        newattack = choose(1, 2, 3, 4, 9)
    if (newattack == attackid[1] || newattack == attackid[2])
        newattack = choose(1, 2, 3, 4, 9)
}
if (global.battlephase == 1)
{
    newattack = choose(3, 5, 6, 7, 8)
    if (newattack == attackid[1] || newattack == attackid[2])
        newattack = choose(3, 5, 6, 7, 8)
    if (newattack == attackid[1] || newattack == attackid[2])
        newattack = choose(3, 5, 6, 7, 8)
}
if (global.battlephase == 6 && unhinged == 0)
    newattack = choose(23, 22)
ourattack = instance_create(x, y, obj_fx_bgen)
ourattack.attack = newattack
attackid[2] = attackid[1]
attackid[1] = attackid[0]
attackid[0] = newattack
active = true
attacktimermax = 150
if (newattack == 1)
    attacktimermax = (90 + floor(random(30)))
if (newattack == 2)
    attacktimermax = (80 + floor(random(25)))
if (newattack == 3)
    attacktimermax = (70 + floor(random(25)))
if (newattack == 4)
    attacktimermax = 110
if (newattack == 5)
    attacktimermax = 110
if (newattack == 6)
    attacktimermax = 130
if (newattack == 7)
    attacktimermax = 130
if (newattack == 8)
    attacktimermax = 110
if (newattack == 9)
    attacktimermax = 95
if (newattack == 20)
    attacktimermax = 90
if (newattack == 21)
    attacktimermax = 90
if (newattack == 22)
    attacktimermax = 80
if (newattack == 22)
    attacktimermax = 100
if (unhinged == 1)
{
    attacktimermax -= 10
    if (newattack == 9)
        attacktimermax = 95
}
attacktimer = 0
