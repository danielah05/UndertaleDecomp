global.goldreward[myself] = (100 + round((FL_MuffetBribePrice / 2)))
if (global.goldreward[myself] >= 999)
	global.goldreward[myself] = 999
FL_SpiderDonationTotal += round((FL_MuffetBribePrice / 2))
with (mypart1)
	instance_destroy()
caster_stop(global.batmusic)
FL_SparedSpecific = 1
scr_monsterdefeat()
global.monster[0] = 0
instance_destroy()
