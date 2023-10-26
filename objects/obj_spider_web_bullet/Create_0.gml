event_inherited()
damage = 5;
range = 360;
owner_id = noone;
knockback_time = 10;
scale = 1;

image_xscale = scale;
image_yscale = image_xscale

function web_die(){
speed = 0;
instance_destroy()
	repeat(10){
			with (instance_create_depth(x,y,depth-1,obj_particle_hit)){
				debris = false;
				image_blend = c_white;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				if instance_exists(obj_spider){
				var _dire = point_direction(obj_spider.x, obj_spider.y,x,y)
			
				motion_add(_dire+random_range(-70,70), random_range(-4,-9));
				}
		}

	}
}

function create_web(){
speed = 0;
 instance_create_depth(x,y,depth+1,obj_spider_web)
instance_destroy()

}

repeat(10){
			with (instance_create_depth(x,y,depth-1,obj_particle_hit)){
				debris = false;
				image_blend = c_white;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				if instance_exists(obj_spider){
				var _dire = point_direction(obj_spider.x, obj_spider.y,x,y)
			
				motion_add(_dire+random(360), random_range(-4,-9));
				}
		}

	}
