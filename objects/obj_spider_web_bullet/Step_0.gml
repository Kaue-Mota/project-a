var _dis = point_distance(xstart, ystart, x,y);
if _dis > range {
web_die();	
}


repeat(2){
			with (instance_create_depth(x,y,depth-1,obj_particle_hit)){
				debris = false;
				image_blend = c_white;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				image_speed = 3;
				fric = .8
				if instance_exists(obj_spider){
				var _dire = point_direction(obj_spider.x, obj_spider.y,x,y)
			
				motion_add(_dire+random(360), random_range(-2,-1));
				}
		}

	}