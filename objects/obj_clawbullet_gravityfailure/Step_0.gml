if (y > (global.idealborder[3] - sprite_height))
    speed = 0
shake += 0.02
x = ((x + random(shake)) - random(shake))
y = ((y + random(shake)) - random(shake))
