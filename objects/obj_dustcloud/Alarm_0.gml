friction = 0.8
direction = random(360)
if (rightside < 0.75)
    direction = 180
if (rightside > 1.25)
    direction = 0
if (topside > 1.25 && rightside > 1.25)
    direction = 45
if (topside > 1.25 && rightside > 0.75 && rightside < 1.25)
    direction = 90
if (topside > 1.25 && rightside < 0.75)
    direction = 135
if (topside < 0.75 && rightside > 1.25)
    direction = 315
if (topside < 0.75 && rightside > 0.75 && rightside < 1.25)
    direction = 270
if (topside < 0.75 && rightside < 0.75)
    direction = 235
direction = (-direction)
speed = 8
