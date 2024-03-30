siny += 1
y = (yo + (sin((siny / 30)) * 4))
yo += vspeed
if instance_exists(creator)
{
    if (creator.emotion == 0)
        sprite_index = spr_shyren_hide
    if (creator.emotion == 1)
        sprite_index = spr_shyren_swim
    if (creator.emotion == 2)
        sprite_index = spr_shyren_sing
}
else
    instance_destroy()
