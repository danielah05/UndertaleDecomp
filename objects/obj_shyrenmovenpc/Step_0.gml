siner += 1
image_index += 0.08
y += (sin((siner / 8)) / 2)
// Daniela: extra code from the xbox version, unsure what reason this was to be added, look into this
if instance_exists(obj_foreground_waterfall)
	depth = (obj_foreground_waterfall.depth + 10)
