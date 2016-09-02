///playerFireGPad

device = argument0;
/*if(keyboard_check(vk_left)){
    shootingBeam = true;
    energy -= curveEnergy;
    with(instance_create(getPointRotationX(x+30,y,x,y,angle),
    getPointRotationY(x+30,y,x,y,angle),BeamObj)) {
        //angle = other.angle;
        image_angle = other.angle;
    }
}

if(keyboard_check_pressed(vk_down)){
    if(energy > doubleLazerEnergy){
        energy -= doubleLazerEnergy;
        with(instance_create(getPointRotationX(x-30,y,x,y,angle),getPointRotationY(x-30,y,x,y,angle),Obj_Lazer)) {
            angle = other.angle;
            motion_set(angle+90,spd);
        }
        with(instance_create(getPointRotationX(x+30,y,x,y,angle),
        getPointRotationY(x+30,y,x,y,angle),Obj_Lazer)) {
            angle = other.angle;
            motion_set(angle+90,spd);
        }
    }
}
if(keyboard_check(vk_right)){

}*/

if(gamepad_button_check_pressed(device, gp_shoulderl)){
    if(energy > doubleLazerEnergy){
        energy -= doubleLazerEnergy;
        audio_play_sound(LazerSnd, 20, false);
        with(instance_create(getPointRotationX(x-30,y,x,y,angle),getPointRotationY(x-30,y,x,y,angle),Obj_Lazer)) {
            angle = other.angle;
            motion_set(angle+90,spd);
        }
        with(instance_create(getPointRotationX(x+30,y,x,y,angle),
        getPointRotationY(x+30,y,x,y,angle),Obj_Lazer)) {
            angle = other.angle;
            motion_set(angle+90,spd);
        }
    }
}

if (leftShoulder > shoulderThreshold && energy > beamEnergy) {
    shootingBeam = true;
    energy -= beamEnergy;
    //audio_play_sound(LazerSnd2, 20, false);
    with(instance_create(getPointRotationX(x+30,y,x,y,angle),
    getPointRotationY(x+30,y,x,y,angle),BeamObj)) {
        //angle = other.angle;
        image_angle = other.angle;
    }
}
else shootingBeam = false;
if (rightShoulder > shoulderThreshold && energy > curveEnergy) {
    shootingCurve = true;
    energy -= curveEnergy
}
else shootingCurve = false;
