///Walking(key,movSpe,playerDir,playerStan)

movSpeX = argument0;
movSpeY = argument1;
playerDir = argument2;

realPlayerDirection = playerDir;
  
if(place_free(x+movSpeX,y+movSpeY)){
    x += movSpeX;
    y += movSpeY;
    
    script_execute(ImageOrientation);
    
    if (playerDir != pointerDirection){
        playerDirection = pointerDirection;
        sprite_index = asset_get_index("spr_walk_animation_" + string(playerDirection));
        image_speed =  animationSpeed * -1; 
    } 
    else {
        playerDirection = playerDir;
        sprite_index = asset_get_index("spr_walk_animation_" + string(playerDirection));
        image_speed =  animationSpeed; }
    
    
}
