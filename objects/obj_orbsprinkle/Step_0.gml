sprank += 1
if (sprank > 14)
    alpha -= 0.08
if (sprink == 0)
{
    image_alpha = (alpha * 0.8)
    sprink = 1
}
else
{
    image_alpha = alpha
    sprink = 0
}
if (alpha < 0.05)
    instance_destroy()
