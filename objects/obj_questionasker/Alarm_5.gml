dmgamt = ceil((global.hp / 2))
global.hp -= dmgamt
if (global.hp <= 1)
{
    global.hp = 1
    q = 8
}
snd_play(snd_hurt1)
global.hshake = 2
global.shakespeed = 2
global.vshake = 2
instance_create(0, 0, obj_shaker)
global.invc = 20
