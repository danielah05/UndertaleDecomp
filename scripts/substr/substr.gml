function substr()
{
	var str = argument[0]
	var pos = argument[1]
	if (pos < 0)
	    pos = ((strlen(str) + 1) + pos)
	if (argument_count == 2)
	    var len = ((strlen(str) - pos) + 1)
	else
	    len = argument[2]
	if (len > 0)
	    return string_copy(str, pos, len);
	else
	    return "";
}
