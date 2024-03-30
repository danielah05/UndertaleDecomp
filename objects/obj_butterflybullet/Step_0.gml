siner += sineradd
siner2 += s2factor
x = (initx + (sin(degtorad(siner)) * sinerfactor))
y = (inity + (cos(degtorad(siner)) * sinerfactor))
image_angle = siner
sinerfactor -= (sin((siner2 / 6)) * 1.2)
x += (sin((siner2 / 12)) * 14)
y += (cos((siner2 / 12)) * 14)
