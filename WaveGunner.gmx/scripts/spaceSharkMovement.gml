///spaceSharkMovement();
var px = getPointRotationX(Player.x, Player.y, Player.x, Player.y, angle);
var py = getPointRotationY(Player.x, Player.y, Player.x, Player.y, angle);

//if(point_distance(x,y,px,py) > 5){
    //move_towards_point(px, py, 3.5);
    mp_potential_step_object(px,py,5,SpaceSharkObj);
//}
//else speed = 0;
