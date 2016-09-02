///menuControls(roomNumber)
roomNumber = argument0;
if(gamepad_is_connected(0)){
    minItem = 0;
    maxItem = 1;
    if(itemNumber == currentItem){
        image_index = 1;
        if(gamepad_button_check_pressed(0, gp_face1)){
            room_goto(roomNumber);
        }
    }
    else{
        image_index = 0;
    }
    if(gamepad_button_check_pressed(0, gp_padd)){
        currentItem--;
        if(currentItem < minItem) currentItem = maxItem;
    }
    if(gamepad_button_check_pressed(0, gp_padu)){
        currentItem++;
        if(currentItem > maxItem) currentItem = minItem;
    }
}
else {
    if(position_meeting(mouse_x, mouse_y, self)){
        image_index = 1;
        if(mouse_check_button_pressed(mb_left)){
            room_goto(roomNumber);
        }
    }
    else {
        image_index = 0;
    }
}