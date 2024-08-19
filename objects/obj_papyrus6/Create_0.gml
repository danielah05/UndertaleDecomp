image_yscale = 999
conversation = 0
if (scr_murderlv() >= MurderLevel.Lv4DogiKilled && FL_SparedSpecific == 0)
{
    FL_ChoiceAteLeftSpaghetti = Choices.AteSpaghetti
    instance_destroy()
    return;
}
if (FL_ChoiceAteLeftSpaghetti > Choices.NotSet)
    instance_destroy()
else
{
    papyrus = instance_create(450, 90, obj_papyrus_actor)
    papyrus.sprite_index = papyrus.rtsprite
}
