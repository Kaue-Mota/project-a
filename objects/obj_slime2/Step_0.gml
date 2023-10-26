event_inherited();
script_execute(estado);
//facing
check_facing()

//adicionar graviddade caso esteja subindo
if (velz != 0) velz += grav;

//colisao com o chao
if((z + velz) > 0){
	velz = 0;
	z = 0;
	
obj_camera.shake_value = .5;
x_scale = 1.7;
y_scale = 1;

//tacar as balas
enemy_bullets_360()

//fumacinha
repeat(10){
		
			with (instance_create_depth(x,y+5,depth+2,obj_particle_hit)){
debris = false;
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
	
}


//velz+=grav
	z += velz;

if estado == slime_perseguir{
	if pular == false{
		attack_spd = 0;
//ativando o larm
		if (ativar_alarm2 == false){
			alarm[1] = irandom_range(60,240);
			ativar_alarm = false;
			ativar_alarm2 = true;
		}
	}else{
				attack_spd = 2;
//ativando o larm

		if (ativar_alarm == false){
			alarm[2] = 25;
			ativar_alarm2 = false;
			ativar_alarm = true;
			}
		
		}
			
	}
	
	if hp == 0{
	instance_destroy();
	}

