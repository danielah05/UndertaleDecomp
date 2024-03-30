randomx = ((((global.idealborder[0] + global.idealborder[1]) / 2) + 50) - random(100))
b = instance_create(randomx, (global.idealborder[2] - 20), obj_bombbul)
if instance_exists(b)
    b.dmg = dmg
alarm[0] = rate
