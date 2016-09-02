///BoatFire
device = argument0;

if(gamepad_button_check_pressed(device, gp_face3)){
    if(energy > doubleLazerEnergy){
        energy -= doubleLazerEnergy;
        with(instance_create(getPointRotationX(x,y,x,y,angle),getPointRotationY(x,y,x,y,angle),HarpoonObj)) {
            angle = other.angle;
            motion_set(angle+90,spd);
        }
    }
}
