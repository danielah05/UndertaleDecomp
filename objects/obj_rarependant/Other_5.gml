if (FL_GotArtifact == 2)
{
	for (i = 0; i < InventorySize; i += 1)
	{
		if (global.item[i] == Items.AnnoyingDog)
			scr_itemshift(i, 0)
	}
	FL_GotArtifact = 0
}
caster_free(dogsong)
