/// @func	SCR_NEWLINE()
/// @desc	Creates a newline in dialog when detecting a "&"
function SCR_NEWLINE()
{
	if vtext
	{
		myx -= vspacing
		myy = writingy
	}
	else
	{
		myx = writingx
		myy += vspacing
	}
}
