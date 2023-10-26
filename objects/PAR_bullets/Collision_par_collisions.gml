
	repeat(3){
			with (instance_create_depth(x,y,depth-1,obj_particle_hit)){
				debris = false;
				image_blend = c_white;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				if instance_exists(obj_player){
				var _dire = point_direction(obj_player.x, obj_player.y,x,y)
			
				motion_add(_dire+random_range(-70,70), random_range(-4,-9));
				}
		}

	}
	instance_destroy()