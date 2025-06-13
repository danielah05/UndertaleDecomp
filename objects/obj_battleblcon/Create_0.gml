depth = obj_mainchara.depth
snd_play(snd_b)
if (global.decomp_vars.VanillaMode || !global.decomp_vars.RemoveBattleIconRandomness)
	alarm[0] = (15 + random(5))
else
	alarm[0] = global.decomp_vars.BattleIconRandomOverride;

global.interact = 3
if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled && FL_SparedSpecific == 0)
	sprite_index = spr_exc_f
action_move_to(obj_mainchara.x, (obj_mainchara.y - 11))
