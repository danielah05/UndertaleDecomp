global.goldreward[myself] = ((FL_SpiderDonationTotal * 2) + (FL_MuffetTotalBribes * 2))
if (global.goldreward[myself] >= 999)
	global.goldreward[myself] = 999
with (mypart1)
	instance_destroy()
con = 95
alarm[4] = 50
caster_stop(global.batmusic)
scr_monsterdefeat()
global.monster[0] = 1
instance_destroy()
instance_create(660, 230, obj_sadspider)
