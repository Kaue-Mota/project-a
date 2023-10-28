repeat (irandom_range(5,15)){
instance_create_layer(x,y,"Debris",obj_destructive_box_debris);
}

repeat (5){

var _dir = point_direction(x,y,obj_player.x,obj_player.y)+180
var _inst = instance_create_depth(x+random_range(-5,5), y+random_range(-5,5),depth-2,obj_dust_corpse);
	_inst.sprite_index = spr_hitparticle
	_inst.image_xscale = .8;
	_inst.image_yscale = .8;
	_inst.image_speed = random_range(1/10,1/6)
	_inst.speed = random (.5)
	_inst.direction = _dir+random_range(-30,30);
	}
	
	//particles debris
	repeat(10){
	
			with (instance_create_layer(x,y,"Debris",obj_particle_hit)){
	debris = true;
				sprite_index = other.debri_sprite
				image_blend = other.debri_color;
				image_index = random(image_number-1)
				image_speed = 0;
				fric = .8
				var _dir = random(360)
				motion_add(_dir+random_range(-40,40), random_range(-1,-6));
	}
}

//fumacinha
repeat(10){
		
			with (instance_create_depth(x,y+5,depth+2,obj_particle_hit)){
debris = false;
					image_blend = #4D2B32;
                depth = -2;
				image_alpha = .5;
				image_speed = .4;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				var _dir = choose(0,180)
				motion_add(_dir+random_range(-50,50), random_range(-4,-6));
	}
}