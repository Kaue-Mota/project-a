if other.hp > 0{
		
		damage_entity(other, owner_id, damage, knockback_time );
		other.hit_alpha = 1;


}

with (other){
	//particles
	repeat(3){
		
			with (instance_create_depth(x,y,depth+2,obj_particle_hit)){
debris = false;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				var _dir = point_direction(x,y, obj_player.x, obj_player.y)
				motion_add(_dir+random_range(-70,70), random_range(-4,-9));
	}
	
	//particles debris
	repeat(debri_amount){
	
			with (instance_create_layer(x,y,"Debris",obj_particle_hit)){
	debris = true;
				sprite_index = other.debri_sprite
				image_blend = other.debri_color;
				image_index = random(image_number-1)
				image_speed = 0;
				fric = .8
				var _dir = point_direction(x,y, obj_player.x, obj_player.y)
				motion_add(_dir+random_range(-40,40), random_range(-1,-6));
	}

}


	//hiteffects
	rot = choose(30,-30)
	x_scale = 1.2;
	y_scale = 1.2;
	draw_sprite_ext(spr_hiteffect, image_index, other.x, other.y, image_yscale, image_xscale, image_angle, c_white, 1);
	}
}