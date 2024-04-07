siner1 += 20
siner2 -= 20
siner3 += 20
siner4 -= 20
siner5 += 20
sinerx += 1
rr = 3
for (i = 0; i < 3; i += 1)
{
    trash1[i].x = ((x + (sin(degtorad((siner1 + (120 * i)))) * rr)) + sin((sinerx / 2)))
    trash1[i].y = ((y + ((cos(degtorad((siner1 + (120 * i)))) * rr) / 3)) + cos((sinerx / 2)))
}
rr = 6
for (i = 0; i < 3; i += 1)
{
    trash2[i].x = ((x + (sin(degtorad((siner2 + (120 * i)))) * rr)) - sin((sinerx / 2)))
    trash2[i].y = (((y + ((cos(degtorad((siner2 + (120 * i)))) * rr) / 3)) - 12) - cos((sinerx / 2)))
}
rr = 10
for (i = 0; i < 3; i += 1)
{
    trash3[i].x = ((x + (sin(degtorad((siner3 + (120 * i)))) * rr)) + sin((sinerx / 2)))
    trash3[i].y = (((y + ((cos(degtorad((siner3 + (120 * i)))) * rr) / 3)) - 24) + cos((sinerx / 2)))
}
rr = 13
for (i = 0; i < 3; i += 1)
{
    trash4[i].x = ((x + (sin(degtorad((siner4 + (120 * i)))) * rr)) - sin((sinerx / 2)))
    trash4[i].y = (((y + ((cos(degtorad((siner4 + (120 * i)))) * rr) / 3)) - 36) - cos((sinerx / 2)))
}
rr = 16
for (i = 0; i < 3; i += 1)
{
    trash5[i].x = ((x + (sin(degtorad((siner5 + (120 * i)))) * rr)) + sin((sinerx / 2)))
    trash5[i].y = (((y + ((cos(degtorad((siner5 + (120 * i)))) * rr) / 3)) - 48) + cos((sinerx / 2)))
}
