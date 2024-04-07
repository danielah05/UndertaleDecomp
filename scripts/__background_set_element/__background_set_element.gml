/// @func	 __background_set_element(background_index, visible, foreground, sprite, x, y, htiled, vtiled, xscale, yscale, stretch, hspeed, vspeed, blend, alpha)
/// @param	{real}				background_index
/// @param	{bool}				visible
/// @param	{bool}				foreground
/// @param	{Asset.GMSprite}	sprite
/// @param	{real}				x
/// @param	{real}				y
/// @param	{bool}				htiled
/// @param	{bool}				vtiled
/// @param	{real}				xstretch
/// @param	{real}				ystretch
/// @param	{bool}				stretch
/// @param	{real}				hspeed
/// @param	{real}				vspeed
/// @param	{Constant.Color}	blend
/// @param	{real}				alpha
/// @retuns	{array}
function __background_set_element(_background_index, _visible, _foreground, _sprite, _x, _y, _htiled, _vtiled, _xscale, _yscale, _stretch, _hspeed, _vspeed, _blend, _alpha)
{
	var __result, __slots, __isforeground;
	var __bind = _background_index
	var __vis = _visible
	var __fore = _foreground
	var __back = _sprite
	var __x = _x
	var __y = _y
	var __htiled = _htiled
	var __vtiled = _vtiled
	var __xscale = _xscale
	var __yscale = _yscale
	var __stretch = _stretch
	var __hspeed = _hspeed
	var __vspeed = _vspeed
	var __blend = _blend
	var __alpha = _alpha
	var __nearestdepth = 1000000000
	var __farthestdepth = -1000000000
	var __depthinc = 100
	__result[0] = -1
	__result[1] = -1
	var __fgstring = "Foreground_"
	var __bgstring = "Background_"
	var __colstring = "Colour"
	var __fglen = string_length(__fgstring)
	var __bglen = string_length(__bgstring)
	var __layerlist = layer_get_all()
	var __layerlistlength = array_length(__layerlist)
	var __collayer = -1
	for (var __i = 0; __i < 8; __i++)
	{
	    __slots[__i] = -1
	    __isforeground[__i] = 0
	}
	for (__i = 0; __i < __layerlistlength; __i++)
	{
	    var __layername = layer_get_name(__layerlist[__i])
	    if (string_pos(__fgstring, __layername) > 0)
	    {
	        var __slotchr = string_char_at(__layername, (__fglen + 1))
	        if (__slotchr == "")
	        {
	        }
	        else
	        {
	            var __slot = real(__slotchr)
	            __slots[__slot] = __layerlist[__i]
	            __isforeground[__slot] = 1
	        }
	    }
	    else if (string_pos(__bgstring, __layername) > 0)
	    {
	        __slotchr = string_char_at(__layername, (__bglen + 1))
	        if (__slotchr == "")
	        {
	        }
	        else
	        {
	            __slot = real(__slotchr)
	            __slots[__slot] = __layerlist[__i]
	            __isforeground[__slot] = 0
	        }
	    }
	    else if (string_pos(__colstring, __layername) > 0)
	    {
	        __collayer = __layerlist[__i]
	        layer_depth(__layerlist[__i], __farthestdepth)
	    }
	    else
	    {
	        var __currdepth = layer_get_depth(__layerlist[__i])
	        if (__currdepth < __nearestdepth)
	            __nearestdepth = __currdepth
	        if (__currdepth > __farthestdepth)
	            __farthestdepth = __currdepth
	    }
	}
	__farthestdepth += (__depthinc + 1000)
	__nearestdepth -= __depthinc
	__farthestdepth = max(__farthestdepth, 2147483600)
	__nearestdepth = min(__nearestdepth, -2147482000)
	for (__i = 0; __i < 8; __i++)
	{
	    if (__slots[__i] != -1)
	    {
	        var __depth = 0
	        if (__isforeground[__i] == 1)
	            __depth = (__nearestdepth - (__i * __depthinc))
	        else
	            __depth = ((__farthestdepth - __depthinc) - (__slot * __depthinc))
	        layer_depth(__slots[__i], __depth)
	    }
	}
	if (__collayer != -1)
	    layer_depth(__collayer, __farthestdepth)
	if (__bind == -1)
	{
	    __layername = __colstring
	    var __layerdepth = __farthestdepth
	}
	else if (__fore == 1)
	{
	    __layername = (__fgstring + string(__bind))
	    __layerdepth = (__nearestdepth - (__bind * __depthinc))
	}
	else
	{
	    __layername = (__bgstring + string(__bind))
	    __layerdepth = ((__farthestdepth - __depthinc) - (__bind * __depthinc))
	}
	if (__bind == -1)
	    var __layerid = __collayer
	else
	    __layerid = __slots[__bind]
	if (__layerid != -1)
	    layer_destroy(__layerid)
	__layerid = layer_create(__layerdepth, __layername)
	layer_x(__layerid, __x)
	layer_y(__layerid, __y)
	layer_hspeed(__layerid, __hspeed)
	layer_vspeed(__layerid, __vspeed)
	var __backel = layer_background_create(__layerid, __back)
	layer_background_visible(__backel, __vis)
	layer_background_htiled(__backel, __htiled)
	layer_background_vtiled(__backel, __vtiled)
	layer_background_xscale(__backel, __xscale)
	layer_background_yscale(__backel, __yscale)
	layer_background_stretch(__backel, __stretch)
	layer_background_blend(__backel, __blend)
	layer_background_alpha(__backel, __alpha)
	__result[0] = __backel
	__result[1] = __layerid
	return __result;
}
