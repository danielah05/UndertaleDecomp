obj_glowshroom.glow = 1
obj_glowshroom.image_index = 1
solvent = 0
if (FL_GlowshroomsOn == 1)
	solvent = 1
if (global.plot > 117)
	solvent = 1
if (solvent == 1)
{
	obj_glowshroom.glow = 0
	obj_glowshroom.image_index = 0
}
glowtotal = 0
