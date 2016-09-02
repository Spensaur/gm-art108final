///angleOfPoints(x1,y1,x2,y2)
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;

deltaX = x2 - x1;
deltaY = y2 - y1;
return arctan2(deltaY, deltaX);