fade = 0
hit = 0
myscore = 0
check = 274
thensc = 0
fatalx = (274 + x)
wherex = -50
type = 0
if (global.weapon == Items.BalletShoes)
    type = 0
if (global.weapon == Items.BurntPan)
    type = 1
if (global.weapon == Items.EmptyGun)
    type = 2
if (global.weapon == Items.TornNotebook)
    type = 3
num = 3
if (type == 0)
{
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(0, 25, 50)
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(100, 125, 150)
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    num = 3
}
if (type == 1)
{
    lr = choose(1)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(0, 25, 50)
    lr = choose(1)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(100, 125, 150)
    lr = choose(1)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = 200
    lr = choose(1)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    num = 4
}
if (type == 2)
{
    wherex = 120
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(180, 210, 240)
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(300, 330, 360)
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(400, 430, 460)
    lr = choose(0)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    num = 4
}
if (type == 3)
{
    lr = choose(1)
    wherex = choose(-50, -25)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    wherex = choose(0, 25, 50)
    lr = choose(1)
    if (lr == 0)
        event_user(4)
    if (lr == 1)
        event_user(5)
    num = 2
}
