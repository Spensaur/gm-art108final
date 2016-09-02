///hammerHeadMovement();
var px = getPointRotationX(Player.x, Player.y + 300, Player.x, Player.y, angle);
var py = getPointRotationY(Player.x, Player.y + 300, Player.x, Player.y, angle);
mp_potential_step_object(px,py,5,HammerHeadObj);
/*if(point_distance(x,y,px,py) > 3.5){
    move_towards_point(px, py, 3.5);
}
else speed = 0;*/