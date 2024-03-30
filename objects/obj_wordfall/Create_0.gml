if (global.language == "ja")
{
    w = instance_create((x + 17), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall1_ja
    w = instance_create((x + 57), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall2_ja
    w = instance_create((x + 89), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall3_ja
    w = instance_create((x + 129), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall4_ja
    w = instance_create((x + 154), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall5_ja
    w = instance_create((x + 167), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall6_ja
    w = instance_create((x + 180), (y + 0), obj_wordfall_word)
    w.sprite_index = spr_wordfall7_ja
}
else
{
    w = instance_create((x + 7), (y + 10), obj_wordfall_word)
    w.sprite_index = spr_wordfall1
    w = instance_create((x + 33), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall2
    w = instance_create((x + 66), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall3
    w = instance_create((x + 101), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall4
    w = instance_create((x + 141), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall5
    w = instance_create((x + 164), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall6
    w = instance_create((x + 182), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall7
}
instance_destroy()
