view_xview_set(0, 300)
obj_mainchara.x = 300
image_xscale = size
image_yscale = size
image_alpha = ((size / 2) + 0.2)
y = (((ystart - 15) + random(5)) + (30 / size))
scrollspeed = ((size / 5) + 0.1)
image_index = random(10)
image_speed = 0.25
go = 1
obj_mainchara.x = rememberx
view_xview_set(0, rememberview)
x = xhome
if (obj_mainchara.x > (room_width - 90))
{
    repeat (5)
    {
        if (x > room_width)
        {
            x -= 320
            xhome -= 320
        }
    }
}
