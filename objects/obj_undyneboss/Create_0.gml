scr_monstersetup(0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_undyneb_body
mypart1 = instance_create(x, y, part1)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
image_speed = 0
mercymod = -9999999999
joketold = 0
sha = 0
siner = 0
with (obj_battlebg)
	instance_destroy()
instance_create(0, 0, obj_boxsiner)
green = 0
darkify = 0
con = 0
greenlock = 0
songplayed = 0
revert = 0
lesson = 1
order = 1
rating = 16
prevhp = global.hp
hitno = 0
damagecause = 0
borderspec = 0
ratingb = 0
defadjust = 0
died = 0
blconx = (x + 180)
blcony = (y + 10)
shakify = 0
uncancel = 0
hitfirst = 0
berserk = 0
mercied = 0
FL_UndyneDifficultyCounter += 1
if (FL_UndyneDifficultyCounter == 1)
{
	FL_UndyneDeathHP = 1500
	if (FL_MonsterKidSavedStatus == MonsterKidSavedStatus.SavedByPlayer)
		FL_UndyneDeathHP = 1400
}
if (FL_UndyneDifficultyCounter == 2)
	global.faceemotion = 1
if (FL_UndyneDifficultyCounter == 3)
	global.faceemotion = 4
if (FL_UndyneDifficultyCounter > 3)
	global.faceemotion = 5
global.monsterhp[myself] = FL_UndyneDeathHP
ht = 200
wd = 250
