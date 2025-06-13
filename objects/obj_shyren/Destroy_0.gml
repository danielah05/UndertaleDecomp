if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
	global.goldreward[3] += 30
if (killed == 0)
	FL_SparedSpecific = 1
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
if (killed == 0)
	agent.image_alpha = 0.5
else
{
	agent.image_index = 1
   FL_ShyrenStatus = ShyrenStatus.Killed
}
i = 0
repeat (5)
{
	caster_free(note[i])
	i += 1
}
caster_free(longnote[0])
caster_free(longnote[1])
caster_free(badnote[0])
caster_free(badnote[1])
caster_free(badnote[2])
