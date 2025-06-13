/// @func	scr_msgup()
/// @desc	Grabs the next message and writes it
function scr_msgup()
{
	global.msc += 1
	stringno = 0
	stringpos = 1
	writingx = round(writingx)
	writingy = round(writingy)
	myx = writingx
	myy = writingy
	SCR_TEXT(global.msc)
	n = 0
	while (global.msg[n] != "%%%")
	{
		mystring[n] = global.msg[n]
		n += 1
	}
	originalstring = scr_replace_buttons_pc(mystring[0])
	halt = 0
	alarm[0] = textspeed
}
