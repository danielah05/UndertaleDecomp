siner += 2
counter += 1
for (i = 0; i < 6; i += 1)
    draw_sprite(sprite_index, i, (x + lengthdir_x(radius, (siner + ((i / 6) * 360)))), (y + lengthdir_y(radius, (siner + ((i / 6) * 360)))))
if (counter > 60 && counter < 90)
    radius += 0.6
if (counter == 120)
    vspeed = 2
if (counter > 120 && counter < 235)
    radius += 1
if (counter == 235)
{
    vspeed = 0
    times = 0
}
if (counter == 285)
{
    for (i = 0; i < 6; i += 1)
    {
        heal = instance_create((x + lengthdir_x(radius, (siner + ((i / 6) * 360)))), (y + lengthdir_y(radius, (siner + ((i / 6) * 360)))), obj_6heal)
        with (heal)
            move_towards_point((obj_vsflowey_heart.x + 8), (obj_vsflowey_heart.y + 8), 3)
        if (i == 0)
        {
            heal.sprite_index = spr_6bandage_big
            heal.image_xscale = 1
            heal.image_yscale = 1
        }
        if (i == 1)
        {
            heal.sprite_index = spr_6thumbsup_small
            heal.image_xscale = 2
            heal.image_yscale = 2
        }
        if (i == 2)
        {
            heal.sprite_index = spr_6shoe_musicnote
            heal.image_xscale = 2
            heal.image_yscale = 2
        }
        if (i == 3)
        {
            heal.sprite_index = spr_6hope
            if (global.language == "ja")
                heal.sprite_index = spr_6hope_ja
            heal.image_xscale = 2
            heal.image_yscale = 2
        }
        if (i == 4)
        {
            heal.sprite_index = spr_6pan_egg
            heal.image_xscale = 2
            heal.image_yscale = 2
        }
        if (i == 5)
        {
            heal.sprite_index = spr_6gun_flower
            heal.image_xscale = 2
            heal.image_yscale = 2
        }
    }
    times += 1
}
if (counter == 325)
{
    if (times < 5)
        counter = 283
}
if (counter > 360)
    radius += 4
if (counter > 460)
    instance_destroy()
