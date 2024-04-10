/// @func	scr_getbuttonsprite(button_input, icon_type)
/// @desc	Gets specific controller button sprite.
/// @arg	{string}	button_input	Button to use
/// @arg	{real}		icon_type		Icon type to use
function scr_getbuttonsprite(_button_input, _icon_type)
{
	var control = _button_input
	var type = _icon_type
	if (control == "A")
	{
	    if (os_type == os_ps4)
	        return button_ps4_dpad_l;
	    if (os_type == os_psvita)
	        return button_vita_dpad_l;
	    if (os_type == os_switch)
	        return button_nx_dpad_l;
	    return noone;
	}
	if (control == "D")
	{
	    if (os_type == os_ps4)
	        return button_ps4_dpad_r;
	    if (os_type == os_psvita)
	        return button_vita_dpad_r;
	    if (os_type == os_switch)
	        return button_nx_dpad_r;
	    return noone;
	}
	var button = noone
	if (control == "Z")
	    button = global.button0
	if (control == "X")
	    button = global.button1
	if (control == "C")
	    button = global.button2
	if (button == gp_face1)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_cross;
	        return button_ps4_cross;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_cross;
	        return button_vita_cross;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_b;
	        return button_nx_b;
	    }
	}
	if (button == gp_face2)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_circle;
	        return button_ps4_circle;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_circle;
	        return button_vita_circle;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_a;
	        return button_nx_a;
	    }
	}
	if (button == gp_face3)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_square;
	        return button_ps4_square;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_square;
	        return button_vita_square;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_y;
	        return button_nx_y;
	    }
	}
	if (button == gp_face4)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_triangle;
	        return button_ps4_triangle;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_triangle;
	        return button_vita_triangle;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_x;
	        return button_nx_x;
	    }
	}
	if (button == gp_shoulderl)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_l1;
	        return button_ps4_l1;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_l;
	        return button_vita_l;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_l;
	        return button_nx_l;
	    }
	}
	if (button == gp_shoulderlb)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_l2;
	        return button_ps4_l2;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_zl;
	        return button_nx_zl;
	    }
	}
	if (button == gp_shoulderr)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_r1;
	        return button_ps4_r1;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_r;
	        return button_vita_r;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_r;
	        return button_nx_r;
	    }
	}
	if (button == gp_shoulderrb)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_r2;
	        return button_ps4_r2;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_zr;
	        return button_nx_zr;
	    }
	}
	if (button == gp_stickl)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_l3;
	        return button_ps4_l3;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_lstick;
	        return button_nx_lstick;
	    }
	}
	if (button == gp_stickr)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_r3;
	        return button_ps4_r3;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_rstick;
	        return button_nx_rstick;
	    }
	}
	if (button == gp_select)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_touchpad;
	        return button_ps4_touchpad;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_select;
	        return button_vita_select;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_minus;
	        return button_nx_minus;
	    }
	}
	if (button == gp_start)
	{
	    if (os_type == os_ps4)
	    {
	        if (type == 1)
	            return buttonL_ps4_options;
	        return button_ps4_options;
	    }
	    if (os_type == os_psvita)
	    {
	        if (type == 1)
	            return buttonL_vita_start;
	        return button_vita_start;
	    }
	    if (os_type == os_switch)
	    {
	        if (type == 1)
	            return buttonL_nx_plus;
	        return button_nx_plus;
	    }
	}
	return noone;
}
