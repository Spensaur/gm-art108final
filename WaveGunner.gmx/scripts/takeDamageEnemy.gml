///takeDamageEnemy(dmg, deadObj);
var dmg = argument0;
var deadObj = argument1;
part_particles_create(global.genPartSys, x, y, global.blood, 10);
//audio_play_sound(HitSound1, 10, false);
if(enemyHealth <= 0){
//game over
    with(instance_create(x,y,deadObj)){
        angle = other.angle
        image_angle = other.angle;
        enemyValue = other.enemyValue;
    }
    Player.pScore += enemyValue;
    instance_destroy();
}
else{
    //instance_change(PlayerDamaged, false);
    stateSpr = "damaged";
    alarm[0] = .1 * room_speed;
    enemyHealth -= dmg;
}

