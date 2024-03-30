x = (shk_x + gl)
gl = (-gl)
if (gl < 0)
    gl += 3
if (gl > 0)
    gl -= 3
if (abs(gl) > 1)
    alarm[2] = 2
