/// @func	__background_set(property, background_index, value)
/// @param	{Constant.BG_Prop}	property
/// @param	{real}				background_index
/// @param	{any}				value
/// @returns	{any}
function __background_set(_property, _background_index, _value)
{
	var __prop = _property
	var __bind = _background_index
	var __val = _value
	var __backinfo = __background_get_element(__bind)
	__background_set_internal(__prop, __bind, __val, __backinfo)
	var __res = __background_get_internal(__prop, __bind, __backinfo)
	return __res;
}
