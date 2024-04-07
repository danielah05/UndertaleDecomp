depth = obj_mainchara.depth
snd_play(snd_b)
alarm[0] = (15 + random(5))
global.interact = 3
if (scr_murderlv() >= 8 && FL_SparedSpecific == 0)
    sprite_index = spr_exc_f
action_move_to(obj_mainchara.x, (obj_mainchara.y - 11))
