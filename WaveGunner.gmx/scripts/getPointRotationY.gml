///getPointRotationY(px, py, ox, oy, angle)
px = argument0;
py = argument1;
ox = argument2;
oy = argument3;
var angle = argument4;
return  - sin(AtoR(angle)) * (px-ox) + cos(AtoR(angle)) * (py-oy) + oy
