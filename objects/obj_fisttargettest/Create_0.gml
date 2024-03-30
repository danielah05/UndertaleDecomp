myscore = 0
check = 274
thensc = 0
fatalx = (274 + x)
wherex = -80
lr = choose(0, 1)
factor = choose(20, 40, 60)
factor += 30
if (lr == 0)
{
    event_user(4)
    wherex = (-80 + factor)
    event_user(4)
    wherex = (-80 + (factor * 2))
    event_user(4)
}
if (lr == 1)
{
    event_user(5)
    wherex = (-80 + factor)
    event_user(5)
    wherex = (-80 + (factor * 2))
    event_user(5)
}
