timer += 1
if (timer > 6)
{
	image_alpha -= 0.1
	if (image_alpha <= 0)
		instance_destroy()
}
siner += 1
x += sin((siner / 2))
