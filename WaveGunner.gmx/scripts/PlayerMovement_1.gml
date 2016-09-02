//PlayerMovement_1
device = argument0;

var XaxisRight =  gamepad_axis_value(device, gp_axislh);
var YaxisRight =  gamepad_axis_value(device, gp_axislv);
var rotationInput =  gamepad_axis_value(device, gp_axisrh);
//var YaxisRightRot =  gamepad_axis_value(device, gp_axisrv);
leftShoulder = gamepad_button_value(device, gp_shoulderlb);
rightShoulder = gamepad_button_value(device, gp_shoulderrb);
//show_debug_message("value for left shoulder: " + string(leftShoulder));
if (abs(XaxisRight) > threshold) {
    part_particles_create(genPartSys, getPointRotationX(x,y+30,x,y,angle), 
    getPointRotationY(x,y+30,x,y,angle), movementPart, 1);
    previousX = x;
    x += XaxisRight * spd;
}
if (abs(YaxisRight) > threshold) {
    part_particles_create(genPartSys, getPointRotationX(x,y+30,x,y,angle), 
    getPointRotationY(x,y+30,x,y,angle), movementPart, 1);
    previousY = y;
    y += YaxisRight * spd;
}
/*if (rightShoulder > shoulderThreshold) {
    //image_angle += leftShoulder * rotationSpd * abs(centMomentum / 3);
    part_particles_create(genPartSys, getPointRotationX(x+30,y+54,x,y,angle), 
    getPointRotationY(x+30,y+54,x,y,angle), rotatePart, 1);
    if(centMomentum > -30) {
        centMomentum -= rightShoulder * 1;
         isActivelyRotatingPadRight = true;
    }
}
else {
    isActivelyRotatingPadRight = false;
}*/
if (abs(rotationInput) > threshold+.05) {
    if(rotationInput > 0){
        isActivelyRotatingPadLeft = true;
        part_particles_create(genPartSys, getPointRotationX(x-30,y+54,x,y,angle), 
        getPointRotationY(x-30,y+54,x,y,angle), rotatePart, 1);
        if(centMomentum > -30) {
            centMomentum -= rotationInput * 1;
        }
    }
    else{
        isActivelyRotatingPadRight = true;
        part_particles_create(genPartSys, getPointRotationX(x+30,y+54,x,y,angle), 
        getPointRotationY(x+30,y+54,x,y,angle), rotatePart, 1);
        if(centMomentum < 30) {
            centMomentum -= rotationInput * 1;
        }
    }
}
else{
    isActivelyRotatingPadRight = false;
    isActivelyRotatingPadLeft = false;
}
/*if (leftShoulder > shoulderThreshold) {
    //image_angle -= rightShoulder * rotationSpd * abs(centMomentum / 3);
    part_particles_create(genPartSys, getPointRotationX(x-30,y+54,x,y,angle), 
    getPointRotationY(x-30,y+54,x,y,angle), rotatePart, 1);
     if(centMomentum < 30) {
        centMomentum += leftShoulder * 1;
         isActivelyRotatingPadLeft = true;
    }
}
else {
    isActivelyRotatingPadLeft = false;
}*/

if(isActivelyRotatingKeyLeft == false && isActivelyRotatingKeyRight == false &&
isActivelyRotatingPadLeft == false && isActivelyRotatingPadRight == false){
    frictionRotation = .4;
}
else{
    frictionRotaion = .05;
}
angle += centMomentum/6
image_angle = angle;
if (centMomentum > 0){
    centMomentum = (centMomentum * .995) -frictionRotation;
}
else {
    centMomentum = (centMomentum * .995) +frictionRotation;
}
