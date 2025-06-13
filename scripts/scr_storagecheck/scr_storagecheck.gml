/// @func			scr_storagecheck(item)
/// @desc			Checks the storage of the player for an item, check "haveit2" for success
/// @arg	{Real}	item
function scr_storagecheck(_item)
{
	haveit2 = 0
	for (i = 0; i < DimensionalBoxSize; i += 1)
	{
		if (global.flag[(DimensionBoxAItemStart + i)] == _item)
			haveit2 = 1
	}
	for (i = 0; i < DimensionalBoxSize; i += 1)
	{
		if (global.flag[(DimensionBoxAItemStart + i)] == _item)
			haveit2 = 1
	}
}
