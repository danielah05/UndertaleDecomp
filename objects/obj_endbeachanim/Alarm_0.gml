instance_create((x + 18), (y + 13), obj_beachdebris)
alarm[0] = 8
if (crack == 0)
    crack = 1
ctime += 1
if (ctime > 5)
    crack = 2
if (ctime > 10)
    crack = 3
