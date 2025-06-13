if (drawnlab == 1 && global.entrance != 3)
	sprite_delete(lab)
charax = ((obj_mainchara.x - view_xview_get(0)) * 2)
charay = (obj_mainchara.y * 2)
var xx = (charax - 10)
var yy = (charay - 5)
if (xx < 0)
	xx = 0
if (yy < 0)
	yy = 0
lab = sprite_create_from_screen_x(xx, yy, 60, 40, false, false, 0, 0)
sprite_index = lab
image_xscale = 0.25
image_yscale = 0.25
drawnlab = 1
