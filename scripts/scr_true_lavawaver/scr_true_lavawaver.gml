function scr_true_lavawaver()
{
	var b = argument0
	var c = argument1
	a += 3
	for (var i = 0; i < 40; i += 2)
	{
	    a += 1
	    var xx = (x + (sin((a / b)) * c))
	    for (var g = 0; g < 4; g++)
	    {
	        var yy = (y + i)
	        for (var f = 0; f < 8; f++)
	        {
	            draw_sprite_part(sprite_index, image_index, 0, i, sprite_width, 2, xx, yy)
	            yy += 40
	        }
	        xx += 100
	    }
	}
}
