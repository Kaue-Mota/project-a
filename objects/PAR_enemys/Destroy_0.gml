obj_camera.shake_value = 1;

repeat (10){

var _inst = instance_create_depth(x+random_range(-5,5), y+random_range(-5,5),depth,obj_dust_corpse);
	_inst.sprite_index = spr_hitparticle
	_inst.image_xscale = .4;
	_inst.image_yscale = .4;
	_inst.image_speed = random_range(1/15,1/6)
	_inst.speed = random (1)
	_inst.direction = direction+random_range(-30,30);
	}
	
		// kill sprite
	with (instance_create_depth(x,y,0,obj_kill_sprite)){
	sprite_index = spr_kill_sprite
	image_speed = 1/2
	x_scale= .8
	y_scale = .8
}


