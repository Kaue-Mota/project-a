/// @description Insert description here
// You can write your code in this editor

//fumascinha
	repeat(10){
			with (instance_create_depth(x,y,depth-1,obj_particle_hit)){
				debris = false;
			
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				if instance_exists(obj_player){
				var _dire = point_direction(obj_player.x, obj_player.y,x,y)
			
				motion_add(_dire+random_range(-50,50), random_range(-2,-3));
				}
		}

	}
	
	with (other){
	//particles debris
	repeat(6){
	
			with (instance_create_layer(x,y,"Debris",obj_particle_hit)){
	debris = true;
				sprite_index = other.debri_sprite
				image_blend = other.debri_color;
				image_index = random(image_number-1)
				image_speed = 0;
				fric = .8
				var _dir = point_direction( obj_player.x, obj_player.y,x,y)
				motion_add(_dir+random_range(-40,40), random_range(-1,-6));
	}

}
	}
	
	//faiscas
	repeat (random_range(3,7)){
			with (instance_create_depth(x,y,depth-1,obj_particle_hit)){
				debris = false;
			
				sprite_index = spr_sparks
			
				fric = .9
				if instance_exists(obj_player){
				var _dire = point_direction(obj_player.x, obj_player.y,x,y)
			
				motion_add(_dire+random_range(-90,90), random_range(-4,-6));
					image_angle = direction;
				}
		}

	}
	instance_destroy()










