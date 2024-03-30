/// @func						scr_armoreq(itemIndex, armorItem)
/// @desc						Equips an armor item
/// @arg	{Real}	itemIndex	The index of the inventory to put the current armor into
/// @arg	{Real}	armorItem	The item to equip
function scr_armoreq(_itemIndex, _armorItem)
{
	if (global.armor == Items.CowboyHat)
	    global.wstrength -= 5
	if (global.armor == Items.TemyArmor)
	    global.wstrength -= 10
	if (_itemIndex >= 0)
	    global.item[_itemIndex] = global.armor
	global.armor = _armorItem
	if (global.armor == Items.Bandage)
	    global.adef = 0
	if (global.armor == Items.FadedRibbon)
	    global.adef = 3
	if (global.armor == Items.ManlyBandanna)
	    global.adef = 7
	if (global.armor == Items.OldTutu)
	    global.adef = 10
	if (global.armor == Items.ButtyGlasses)
	    global.adef = 5
	if (global.armor == Items.StainedApron)
	    global.adef = 11
	if (global.armor == Items.CowboyHat)
	{
	    global.adef = 12
	    global.wstrength += 5
	}
	if (global.armor == Items.HeartLocket)
	    global.adef = 15
	if (global.armor == Items.TheLocket)
	    global.adef = 99
	if (global.armor == Items.TemyArmor)
	{
	    global.adef = 20
	    global.wstrength += 10
	}
	scr_itemnameb()
	scr_itemname()
}
