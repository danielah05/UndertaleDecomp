active = true
con = 1
if (dir == 1 || dir == 3)
    sprite_index = spr_s_bonestab_h_tall
if (dir == 0 || dir == 2)
    sprite_index = spr_s_bonestab_v_wide
if (dir == 0 || dir == 2)
    x = global.idealborder[0]
if (dir == 3)
    x = (global.idealborder[0] - sprite_width)
if (dir == 1)
    x = global.idealborder[1]
if (dir == 0)
    y = global.idealborder[3]
if (dir == 1 || dir == 3)
    y = global.idealborder[2]
if (dir == 2)
    y = (global.idealborder[2] - sprite_height)
ideal_y = y
ideal_x = x
if (warning > 4)
    snd_play(snd_b)
