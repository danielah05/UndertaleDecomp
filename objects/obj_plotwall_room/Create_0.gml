phase = 0
plotrating = 0
scale = 1
if (room == room_ruins15B)
    plotrating = 13
if (room == room_ruins15C)
{
    plotrating = 14
    scale = 0
}
if (room == room_ruins15D)
    plotrating = 15
if (room == room_tundra_snowpuzz)
    plotrating = 48
if (room == room_tundra_xoxosmall)
    plotrating = 52
if (room == room_tundra_xoxopuzz)
    plotrating = 55
if (scale == 1)
    image_yscale = 400
if (scale == 0)
    image_xscale = 400
if (global.plot > plotrating)
    instance_destroy()
