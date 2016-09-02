///myMoveTowards()
var obj = argument0;

var px = getPointRotationX(Player.x, Player.y, Player.x, Player.y, angle);
var py = getPointRotationY(Player.x, Player.y, Player.x, Player.y, angle);

mp_potential_step_object(px,py,5,obj);