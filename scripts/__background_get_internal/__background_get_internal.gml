/// @func	__background_get_internal(property, background_index, background_info)
/// @param	{Constant.BG_Prop}	property
/// @param	{real}				background_index
/// @param	{array}				background_info
/// @returns	{any}
function __background_get_internal(_property, _background_index, _background_info)
{
	var __prop = _property
	var __bind = _background_index
	var __backinfo = _background_info
	if (__backinfo[0] == -1 || layer_background_exists(__backinfo[1], __backinfo[0]) == false)
	{
	    __backinfo = __background_get_element(__bind)
	    if (__backinfo[0] == -1)
	        return -1;
	}
	var __res = -1
	var __backid = __backinfo[0]
	var __layerid = __backinfo[1]
	var __isfore = __backinfo[2]
	switch __prop
	{
	    case BG_PROP_VISIBLE:
	        __res = layer_get_visible(__layerid)
	        break
	    case BG_PROP_FOREGROUND:
	        __res = __isfore
	        break
	    case BG_PROP_SPRITE:
	        __res = layer_background_get_sprite(__backid)
	        break
	    case BG_PROP_X:
	        __res = layer_get_x(__layerid)
	        break
	    case BG_PROP_Y:
	        __res = layer_get_y(__layerid)
	        break
	    case BG_PROP_WIDTH:
	        __res = sprite_get_width(layer_background_get_index(__backid))
	        break
	    case BG_PROP_HEIGHT:
	        __res = sprite_get_height(layer_background_get_index(__backid))
	        break
	    case BG_PROP_HTILED:
	        __res = layer_background_get_htiled(__backid)
	        break
	    case BG_PROP_VTILED:
	        __res = layer_background_get_vtiled(__backid)
	        break
	    case BG_PROP_XSCALE:
	        __res = layer_background_get_xscale(__backid)
	        break
	    case BG_PROP_YSCALE:
	        __res = layer_background_get_yscale(__backid)
	        break
	    case BG_PROP_HSPEED:
	        __res = layer_get_hspeed(__layerid)
	        break
	    case BG_PROP_VSPEED:
	        __res = layer_get_vspeed(__layerid)
	        break
	    case BG_PROP_BLEND:
	        __res = layer_background_get_blend(__backid)
	        break
	    case BG_PROP_ALPHA:
	        __res = layer_background_get_alpha(__backid)
	        break
	    default:
	        break
	}
	
	return __res;
}
