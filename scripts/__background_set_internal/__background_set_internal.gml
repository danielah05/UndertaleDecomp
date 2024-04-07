/// @func	__background_set_internal(property, background_index, value, background_info)
/// @param	{Constant.BG_Prop}	property
/// @param	{real}				background_index
/// @param	{any}				value
/// @param	{array}				background_info
/// @returns	{real}
function __background_set_internal(_property, _background_index, _value, _background_info)
{
	var __prop = _property
	var __bind = _background_index
	var __val = _value
	var __backinfo = _background_info
	if (__backinfo[0] == -1)
	    return -1;
	var __backid = __backinfo[0]
	var __layerid = __backinfo[1]
	var __isfore = __backinfo[2]
	if (__prop == BG_PROP_FOREGROUND)
	{
	    if (round(__val) != round(__isfore))
	    {
	        var __visible = layer_get_visible(__backid)
	        var __index = layer_background_get_sprite(__backid)
	        var __htiled = layer_background_get_htiled(__backid)
	        var __vtiled = layer_background_get_vtiled(__backid)
	        var __stretch = layer_background_get_stretch(__backid)
	        var __blend = layer_background_get_blend(__backid)
	        var __alpha = layer_background_get_alpha(__backid)
	        var __xscale = layer_background_get_xscale(__backid)
	        var __yscale = layer_background_get_yscale(__backid)
	        var __x = layer_get_x(__layerid)
	        var __y = layer_get_y(__layerid)
	        var __hspeed = layer_get_hspeed(__layerid)
	        var __vspeed = layer_get_vspeed(__layerid)
	        __background_set_element(__bind, __visible, __val, __index, __x, __y, __htiled, __vtiled, __xscale, __yscale, __stretch, __hspeed, __vspeed, __blend, __alpha)
	    }
	}
	else
	{
	    switch __prop
	    {
	        case BG_PROP_VISIBLE:
	            layer_background_visible(__backid, __val)
	            layer_set_visible(__layerid, __val)
	            break
	        case BG_PROP_SPRITE:
	            layer_background_change(__backid, __val)
	            break
	        case BG_PROP_X:
	            layer_x(__layerid, __val)
	            break
	        case BG_PROP_Y:
	            layer_y(__layerid, __val)
	            break
	        case BG_PROP_HTILED:
	            layer_background_htiled(__backid, __val)
	            break
	        case BG_PROP_VTILED:
	            layer_background_vtiled(__backid, __val)
	            break
	        case BG_PROP_XSCALE:
	            layer_background_xscale(__backid, __val)
	            break
	        case BG_PROP_YSCALE:
	            layer_background_yscale(__backid, __val)
	            break
	        case BG_PROP_HSPEED:
	            layer_hspeed(__layerid, __val)
	            break
	        case BG_PROP_VSPEED:
	            layer_vspeed(__layerid, __val)
	            break
	        case BG_PROP_BLEND:
	            layer_background_blend(__backid, __val)
	            break
	        case BG_PROP_ALPHA:
	            layer_background_alpha(__backid, __val)
	            break
	        default:
	            break
	    }
	
	}
	return -1;
}
