scr_monstersetup(0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_mettatonb_body2
mypart1 = instance_create(x, y, part1)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -99999
sha = 0
shb = 0
flex = 0
alphaup = 0
hurtlast = 0
skip = false
right = 0
if instance_exists(obj_battlebg)
{
	with (obj_battlebg)
		instance_destroy()
}
x -= 100
y -= 100
image_xscale = 2
image_yscale = 2
hurta = 0
turns = 0
con = 0
obj_heart.shot = 1
obj_heart.sprite_index = spr_heartyellow_flip
writer = 9
i = 0
repeat (99)
{
	global.failure[i] = 0
	i += 1
}
global.attacktype = 26
global.specialdam[0] = 0
global.specialdam[1] = 0
global.specialdam[2] = 0
con_2 = 0
ht = 200
wd = 200
