function scr_itemroom()
{
	itemfree = InventorySize
	itemhold = 0
	for (i = 0; i < InventorySize; i += 1)
	{
		if (global.item[i] != Items.Null)
		{
			itemfree -= 1
			itemhold += 1
		}
	}
}
