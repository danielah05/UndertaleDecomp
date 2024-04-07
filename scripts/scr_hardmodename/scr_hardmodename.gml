/// @func					scr_hardmodename(name)
/// @desc					Checks if a name is the hardmode name
/// @param		{string}	name	The name to check
/// @returns	{boolean}
function scr_hardmodename(_name)
{
	return (string_lower(_name) == "frisk" || string_to_hiragana(_name) == "ふりすく");
}
