/// @func						scr_weaponeq(itemIndex, weaponItem)
/// @desc						Equips an armor item
/// @arg	{Real}	itemIndex	The index of the inventory to put the current armor into
/// @arg	{Real}	weaponItem	The item to equip
function scr_weaponeq(_itemIndex, _weaponItem)
{
	if (global.weapon == Items.ToughGlove && global.inbattle == true && FL_StrongToughGlove == true)
		global.at = (8 + (global.lv * 2))
	if (_itemIndex >= 0)
		global.item[_itemIndex] = global.weapon
	global.weapon = _weaponItem
	if (global.weapon == Items.Stick)
		global.wstrength = 0
	if (global.weapon == Items.ToyKnife)
		global.wstrength = 3
	if (global.weapon == Items.ToughGlove)
		global.wstrength = 5
	if (global.weapon == Items.BalletShoes)
		global.wstrength = 7
	if (global.weapon == Items.TornNotebook)
		global.wstrength = 2
	if (global.weapon == Items.BurntPan)
		global.wstrength = 10
	if (global.weapon == Items.EmptyGun)
		global.wstrength = 12
	if (global.weapon == Items.WornDagger)
		global.wstrength = 15
	if (global.weapon == Items.RealKnife)
		global.wstrength = 99
	if (global.armor == Items.CowboyHat)
		global.wstrength += 5
	if (global.armor == Items.TemyArmor)
		global.wstrength += 10
	scr_itemnameb()
	scr_itemname()
}
