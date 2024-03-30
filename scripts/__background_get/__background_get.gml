/// @func	__background_get(property, background_index)
/// @param	{Constant.BG_Prop}	property
/// @param	{real}				background_index
/// @returns {Any}
function __background_get(_property, _background_index)
{
	var __prop = _property
	var __bind = _background_index
	var __backinfo = __background_get_element(__bind)
	return __background_get_internal(__prop, __bind, __backinfo);
}
