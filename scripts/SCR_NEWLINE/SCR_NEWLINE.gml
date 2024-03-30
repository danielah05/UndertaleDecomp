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
