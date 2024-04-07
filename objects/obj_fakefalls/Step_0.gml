if (col < 3 && bbox_bottom < obj_mainchara.bbox_top)
    scr_depth()
else
    depth = 1000
col -= 1
if (col < 0)
    col = 0
