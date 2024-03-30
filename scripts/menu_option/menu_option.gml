enum MenuOptionTypes {
	CheckBox,
	Slider,
	HoldButton
}
/// @func	menu_checkbox_option(displayName, varName, about, value, defaultValue, [callbackFunction])
/// @arg	{String}	displayName			The name to display in the menu
/// @arg	{String}	varName				The variable named defined in the global.decomp_vars struct
/// @arg	{String}	about				The info to display in the about box in the menu
/// @arg	{real}		value				The value to use when instantiated
/// @arg	{real}		defaultValue		The value to use when the user resets this to the default value
/// @arg	{Function}  callbackFunction	The function to call when data is changed
function menu_checkbox_option(_displayName, _varName, _about, _value, _defaultValue, _callbackFunction = noone) constructor
{
	displayName = _displayName;
	varName = _varName;
	about = _about;
	value = _value;
	defaultValue = _defaultValue;
	callbackFunction = _callbackFunction;
	type = MenuOptionTypes.CheckBox;
}

/// @func	menu_holdbutton_option(displayName, about, holdtimer, [callbackFunction])
/// @arg	{String}	displayName			The name to display in the menu
/// @arg	{String}	about				The info to display in the about box in the menu
/// @arg	{real}		holdtimer		How long the user needs to hold the button for it to active
/// @arg	{Function}  callbackFunction	The function to call when data is changed
function menu_holdbutton_option(_displayName, _about, _holdtimer, _callbackFunction = noone) constructor
{
	displayName = _displayName;
	about = _about;
	holdtimer = _holdtimer;
	callbackFunction = _callbackFunction;
	type = MenuOptionTypes.HoldButton;
}

/// @func	menu_slider_option(displayName, varName, about, value, min, max, [baseSpeed], [fastSpeed], [callbackFunction])
/// @arg	{String}	displayName			The name to display in the menu
/// @arg	{String}	varName				The variable named defined in the global.decomp_vars struct
/// @arg	{String}	about				The info to display in the about box in the menu
/// @arg	{real}		value				The value to use when instantiated	
/// @arg	{real}		defaultValue		The value to use when the user resets this to the default value
/// @arg	{real}		minValue			The minimum accepted value
/// @arg	{real}		maxValue			The maximum accepted value
/// @arg	{real}		baseSpeed			The default speed (holding a direction for less than a second)
/// @arg	{real}		fastSpeed			The default speed (holding a direction for more than a second)
/// @arg	{Function}  callbackFunction	The function to call when data is changed
function menu_slider_option(_displayName, _varName, _about, _value, _defaultValue, _min, _max, _baseSpeed = 1, _fastSpeed = 2, _callbackFunction = noone) constructor
{
	displayName = _displayName;
	varName = _varName;
	about = _about;
	value = _value;
	defaultValue = _defaultValue;
	minValue = _min;
	maxValue = _max;
	baseSpeed = _baseSpeed;
	fastSpeed = _fastSpeed;
	callbackFunction = _callbackFunction;
	type = MenuOptionTypes.Slider;
}