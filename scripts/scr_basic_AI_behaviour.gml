if(instance_exists(obj_player)){
    if(object_exists(obj_player)){
        if(distance_to_point(obj_player.x, obj_player.y) < 400 && !collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true)){
            motion_add(point_direction(x, y, obj_player.x, obj_player.y), 1);
            image_angle = point_direction(x, y, obj_player.x, obj_player.y)+180;
            //image_speed = 4;
            //image_index = spr_ememyMovingPistol;
            
            randomShoot = floor(random(30))+1;
            
            if(randomShoot == 4){
                instance_create(x, y, obj_enemyBulletPistol);
            }
            
            if(distance_to_point(obj_player.x, obj_player.y) < 100 && !collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true)){
                speed = 0;
                //image_index = spr_enemyPistol;
                //image_speed = 0;
            }
            
            // Speed
            if(speed >= 4){
                speed = 4;
            }
        }else{
            speed = 0;
            //image_index = spr_enemyPistol;
            //image_speed = 0;
        }
    }
}
