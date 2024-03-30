pd += 1
y += (2 * sin((pd / 2)))
x += (2 * cos((pd / 2)))
if (up == 1)
    grandv += 0.13
else
    grandv -= 0.13
if (grandv > 3)
    up = 0
y -= grandv
alarm[6] = 1
