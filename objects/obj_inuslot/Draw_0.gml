slotspr = spr_inuslot_slots
if (drawmessage == 2)
    slotspr = spr_inuslot_slots_win
for (i = 0; i < 3; i += 1)
{
    slota = slot[i, slotno[i]]
    slotb = slot[i, (slotno[i] + 1)]
    slotc = slot[i, (slotno[i] + 2)]
    if (i == 1)
    {
        if (slota == 5)
            slota = 7
        if (slotb == 5)
            slotb = 7
        if (slotc == 5)
            slotc = 7
    }
    if (i == 2)
    {
        if (slota == 5)
            slota = 8
        if (slotb == 5)
            slotb = 8
        if (slotc == 5)
            slotc = 8
    }
    if (sloty[i] < 4)
        draw_sprite(slotspr, slota, ((x + 5) + (i * 10)), ((y - sloty[i]) + 4))
    draw_sprite(slotspr, slotb, ((x + 5) + (i * 10)), ((y - sloty[i]) + 19))
    draw_sprite(slotspr, slotc, ((x + 5) + (i * 10)), ((y - sloty[i]) + 34))
}
image_index = 0
if (drawmessage == 2)
    image_index = 1
draw_self()
draw_set_font(fnt_small)
draw_set_color(c_black)
draw_rectangle(70, 24, 125, 50, false)
draw_set_color(c_white)
draw_text(72, 26, string_hash_to_newline((string(FL_DogShrineXboxCoins) + " COIN")))
if (drawmessage == 0)
    curcolor = merge_color(curcolor, c_black, 0.1)
if (drawmessage == 1)
    curcolor = c_white
if (drawmessage == 2)
    curcolor = 8421504
draw_set_color(curcolor)
draw_text(72, 34, string_hash_to_newline(message))
draw_text(72, 42, string_hash_to_newline(message2))
