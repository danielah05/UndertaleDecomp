/// @func	scr_textsetup(font, color, startx, starty, endx, shake, txtspeed, txtsound, spacing, vspacing)
/// @param	{Asset.GMFont}	font
/// @param	{real}			color
/// @param	{real}			startx
/// @param	{real}			starty
/// @param	{real}			endx
/// @param	{real}			shake
/// @param	{real}			txtspeed
/// @param	{Asset.GMSound}	txtsound
/// @param	{real}			spacing
/// @param	{real}			vspacing
function SCR_TEXTSETUP(_font, _color, _startx, _starty, _endx, _shake, _txtspeed, _txtsound, _spacing, _vspacing)
{
	myfont = _font
	mycolor = _color
	writingx = _startx
	writingy = _starty
	writingxend = _endx
	writingxend_base = writingxend
	shake = _shake
	textspeed = _txtspeed
	txtsound = _txtsound
	spacing = _spacing
	vspacing = _vspacing
	vtext = 0
	htextscale = 1
	vtextscale = 1
}
