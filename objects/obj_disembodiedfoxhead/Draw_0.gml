if (myinteract > 0 && instance_exists(OBJ_WRITER))
{
	if (OBJ_WRITER.halt == 0)
		animanim += 0.2
	siner += 0.5
}
else
{
	animanim = 0
	if ((sin((siner / 2)) * 2) < 1.9)
		siner += 0.5
}
ss = (sin((siner / 2)) * 2)
draw_set_color(c_black)
ossafe_fill_rectangle(((x + 5) - (ss * 2)), ((y + 20) + (ss / 2)), (((x + sprite_width) - 8) + (ss * 2)), ((y + sprite_height) + 1))
draw_sprite(sprite_index, animanim, x, ((y - 6) + (sin((siner / 2)) * 6)))
