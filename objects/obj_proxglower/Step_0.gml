alf = (maxdist / (abs((x - obj_mainchara.x)) + 1))
alf = round((alf * 4))
alf /= 4
if (alf > 1)
    alf = 1
image_alpha = alf
