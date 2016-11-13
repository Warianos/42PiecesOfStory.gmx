///Walking(key,movSpe,playerDir,playerStan)

movSpeX = argument0;
movSpeY = argument1;
playerImg = argument2;
playerDir = argument3;
playerStan = argument4;
//var img = asset_get_index("spr_walk_animation_" + string(playerDir));

  


if(place_free(x+movSpeX,y+movSpeY)){
    x += movSpeX;
    y += movSpeY;
    sprite_index = playerImg;
    image_speed = animationSpeed; 
    playerDirection = playerDir;
}
