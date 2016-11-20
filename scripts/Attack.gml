stance = argument0;
playerDirection = argument1;

if(stance = "curvebow" && obj_player.numbArrows < 1){
    i = instance_create(obj_player.x, obj_player.y, obj_arrow)
    i.sprite_index = asset_get_index("Arrow_" + string(playerDirection));
    i.speed = 4;
    if(playerDirection = "up"){
        i.direction = 90;
    }else if(playerDirection = "down"){
        i.direction = 270;
    }else if(playerDirection = "right"){
        i.direction = 0;
    }else if(playerDirection = "left"){
        i.direction = 180;
    }
    obj_player.numbArrows +=1;
}

if(stance = "wand" && obj_player.numbFireballs < 1){
    i = instance_create(obj_player.x, obj_player.y, obj_fireball)
    i.sprite_index = asset_get_index("spr_fireball_" + string(playerDirection));
    i.speed = 4;
    if(playerDirection = "up"){
        i.direction = 90;
    }else if(playerDirection = "down"){
        i.direction = 270;
    }else if(playerDirection = "right"){
        i.direction = 0;
    }else if(playerDirection = "left"){
        i.direction = 180;
    }
    obj_player.numbFireballs +=1;
}

if(stance = "sword"){
    with instance_create(x,y,obj_sword_hit){
        image_xscale = obj_player.image_xscale;
    }
    obj_sword_hit.sprite_index = asset_get_index("spr_" + string(stance) + "_hit_" + string(playerDirection)); 
}

sprite_index = asset_get_index("spr_" + string(stance) + "_animation_" + string(playerDirection)); 
image_speed = 0.5;


