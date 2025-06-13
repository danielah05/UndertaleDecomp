image_index = global.faceemotion
rr1 = (random(0.6) - random(0.6))
rr2 = (random(0.6) - random(0.6))
if (global.faceemotion == 2)
{
	siner += 1
	draw_sprite(sprite_index, image_index, x, (y + (sin(siner) * 1)))
}
if (global.faceemotion == 3)
	draw_sprite(spr_bpants_arms, 0, ((x - 20) + (rr1 * 1.1)), (y + (rr2 * 1.1)))
if (global.faceemotion != 5 && global.faceemotion != 2 && global.faceemotion != 1)
	draw_sprite(sprite_index, image_index, x, y)
if (global.faceemotion == 5 || global.faceemotion == 1)
	draw_sprite(sprite_index, image_index, (x + rr1), (y + rr2))
if (global.faceemotion == 6)
	draw_sprite(spr_bpants_cloud, anim, (x - 5), y)
anim += 0.1
draw_set_color(c_white)
ossafe_fill_rectangle(0, 120, 600, 124)
