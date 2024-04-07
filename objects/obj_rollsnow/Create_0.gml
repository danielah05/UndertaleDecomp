size = 2
angle = 0
friction = 0.1
bonk = 0
falling = 0
specialy = 0
golf = 0
t = 0
shrinko = 30
rolltime = 0
timeincrease = 0
murder = 0
if (FL_TundraKillsCounter >= 16)
    murder = 1
if (murder == 1)
    instance_destroy()
