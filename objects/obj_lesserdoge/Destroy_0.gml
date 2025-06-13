if (mercymod > 99)
	global.goldreward[3] += 7
if (mercymod >= 150)
	FL_LesserDogStatus = DogStatus.MaxNeckSize
if (mercymod > 500)
	global.goldreward[3] += 13
if (mercymod > 2600)
	global.goldreward[3] += 40
if (killed == 1)
	FL_LesserDogStatus = DogStatus.Killed
if (killed == 0)
	FL_SparedSpecific = 1
scr_monsterdefeat(0, 0, 0, 0, 0)
