if (timer < 30)
    image_alpha += 0.1
timer += 1
if (timer > 20)
{
    image_alpha -= 0.04
    if (image_alpha < 0.05)
        instance_destroy()
}
if (image_alpha > obj_killervisage.image_alpha)
    image_alpha = obj_killervisage.image_alpha
