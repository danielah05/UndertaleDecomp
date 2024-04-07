thisi = floor(random(10))
for (i = 9; i > 0; i -= 1)
    rp[i] = rp[(i - 1)]
rp[0] = (global.ratings - random((global.ratings / 2)))
if (accu == 6)
    rp[0] = global.ratings
accu += 1
if (accu == 10)
    accu = 0
alarm[5] = 6
