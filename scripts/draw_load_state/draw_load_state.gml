/// @func	draw_load_state(state)
/// @arg	{struct}	state	Draw state to load
function draw_load_state(_state)
{
	with (_state)
	{
		draw_set_color(color);
		draw_set_alpha(alpha);
		draw_set_halign(hAlign);
		draw_set_valign(vAlign);
		draw_set_font(font);
	}
}