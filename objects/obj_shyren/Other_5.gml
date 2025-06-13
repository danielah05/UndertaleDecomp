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
if (killed == 0)
	FL_SparedSpecific = 1
