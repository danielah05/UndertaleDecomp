alarm[0] = (rating * timemod[spearno])
if (speartype[spearno] == 0)
{
    b = instance_create(0, 0, obj_blockbullet)
    b.dmg = dmg
}
if (speartype[spearno] == 1)
{
    b = instance_create(0, 0, obj_blockbullet2)
    b.dmg = dmg
}
if (speartype[spearno] == 2)
{
    alarm[0] = (rating * 2)
    b = instance_create(0, 0, obj_blockbullet2)
    b.site = timemod[spearno]
    b.dmg = dmg
    b = instance_create(0, 0, obj_blockbullet)
    b.site = speardir[spearno]
    b.dmg = dmg
}
b.speedmod = speedmod[spearno]
b.site = speardir[spearno]
spearno += 1
if (alarm[0] == 0) // Vultu: Added this because gamemaker doesn't like alarms being set to 0
	alarm[0] = 1;  // anymore, this appears to have the exact same behavior as before
if (spearno > spearmax)
{
    alarm[0] = -1
    done = 1
}
