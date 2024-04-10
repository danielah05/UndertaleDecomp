/// @func		scr_deaddog()
/// @desc		Checks to see if all of the Dog enemies are killed or not.
/// @returns	{bool}
function scr_deaddog()
{
	if (FL_DoggoStatus == DogStatus.Killed && FL_DogCoupleStatus == DogStatus.Killed && FL_GreaterDogStatus == DogStatus.Killed)
	    return true;
	else
	    return false;
}
