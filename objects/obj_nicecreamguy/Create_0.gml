scr_depth(0, 0, 0, 0, 0)
myinteract = 0
image_xscale = 1
image_yscale = 1
if (FL_NicecreamDonationTotal > 0 && room == room_tundra8)
    sprite_index = spr_icecreamguy_happy
if (FL_NiceCreamBusiness > 0 && room == room_water_nicecream)
    sprite_index = spr_icecreamguy_happy
if (global.plot >= 101 && room == room_tundra8)
    instance_destroy()
if (global.plot >= 121 && room == room_water_nicecream)
    instance_destroy()
if (room == room_fire_hotelfront_1)
{
    if (FL_KilledRoyalGuards == 0)
        sprite_index = spr_icecreamguy_happy
}
conversation = 0
j = 0
mouth = 0
murder = 0
if (scr_murderlv() >= MurderLevel.Lv3DoggoKilled)
    murder = 1
if (FL_SparedSpecific == 1)
    murder = 0
if (FL_TundraKillsCounter >= 16)
    murder = 1
if (murder == 1)
    instance_destroy()
