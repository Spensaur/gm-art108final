///getPointRotationX(px, py, ox, oy, angle)
px = argument0;
py = argument1;
ox = argument2;
oy = argument3;
var angle = argument4;
return cos(AtoR(angle)) * (px-ox) + sin(AtoR(angle)) * (py-oy) + ox