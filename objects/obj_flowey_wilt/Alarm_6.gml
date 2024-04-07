con = 0
image_index = 6
x = (xstart - shudder)
shudder *= -1
if (shudder > 0)
    shudder -= 1
else
    shudder += 1
if (shudder != 0)
    alarm[6] = 8
else
    doomcon = 1
