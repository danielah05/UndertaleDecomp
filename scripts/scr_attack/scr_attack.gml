/// @func	scr_attack()
/// @desc	Chooses what Battle "Target" to use depending on the currently equiped Weapon.
function scr_attack()
{
	if (global.weapon == Items.Stick || global.weapon == Items.ToyKnife || global.weapon == Items.ToughGlove || global.weapon == Items.WornDagger || global.weapon == Items.RealKnife)
	    instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_target)
	if (global.weapon == Items.BalletShoes || global.weapon == Items.EmptyGun || global.weapon == Items.BurntPan || global.weapon == Items.TornNotebook)
	    instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_shoetargettest)
}
