function enemy_bullets_360(){
	var _dir1 = 90;
	var _xx1 = lengthdir_x(10,_dir1)
	var _yy1 = lengthdir_y(10,_dir1)

		with (instance_create_layer(x+_xx1,y+_yy1, "Projectiles", obj_bullet_enemy)){
			speed =bullet_speed;
			direction = 90
			image_angle = direction;
	}
	
	var _dir2 = 135;
	var _xx2 = lengthdir_x(10,_dir2)
	var _yy2 = lengthdir_y(10,_dir2)
	
		with (instance_create_layer(x+_xx2,y+_yy2, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 135
			image_angle = direction;
	}
	
	var _dir3 = 180;
	var _xx3 = lengthdir_x(10,_dir3)
	var _yy3 = lengthdir_y(10,_dir3)
	
		with (instance_create_layer(x+_xx3,y+_yy3, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 180
			image_angle = direction;
	}
	
	var _dir4 = 225;
	var _xx4 = lengthdir_x(10,_dir4)
	var _yy4 = lengthdir_y(10,_dir4)
	
		with (instance_create_layer(x+_xx4,y+_yy4, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 225
			image_angle = direction;
	}
	
	var _dir5 = 270;
	var _xx5 = lengthdir_x(10,_dir5)
	var _yy5 = lengthdir_y(10,_dir5)
	
		with (instance_create_layer(x+_xx5,y+_yy5, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 270
			image_angle = direction;
	}
	
	var _dir6 = 315;
	var _xx6 = lengthdir_x(10,_dir6)
	var _yy6 = lengthdir_y(10,_dir6)
	
		with (instance_create_layer(x+_xx6,y+_yy6, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 315
			image_angle = direction;
	}
	
	var _dir7 = 0;
	var _xx7 = lengthdir_x(10,_dir7)
	var _yy7 = lengthdir_y(10,_dir7)
	
		with (instance_create_layer(x+_xx7,y+_yy7, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 0
			image_angle = direction;
	}
	
	var _dir8 = 45;
	var _xx8 = lengthdir_x(10,_dir8)
	var _yy8 = lengthdir_y(10,_dir8)
	
		with (instance_create_layer(x+_xx8,y+_yy8, "Projectiles", obj_bullet_enemy)){
			speed = bullet_speed;
			direction = 45
			image_angle = direction;
	}
}