scrollspeed[0] = 0.1
scrollspeed[1] = 0.3
scrollspeed[2] = 0.5
scrollspeed[3] = 0.6
scrollspeed[4] = 0.7
scrollspeed[5] = 0.8
scrollspeed[6] = 0.9
for (i = 0; i < 7; i += 1)
{
    xxx = view_xview_get(0)
    if (xxx > (room_width - 320))
        xxx = (room_width - 320)
    if (xxx >= 0)
        background_x_set(i, floor((xxx - (xxx * scrollspeed[i]))))
    gg = (room_width - 320)
    if (xxx >= (room_width - 320))
        background_x_set(i, (c_black + floor((gg - (gg * scrollspeed[i])))))
}
