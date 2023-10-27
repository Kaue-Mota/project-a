event_inherited();
script_execute(estado);
//facing
check_facing()

//hurt animation
enemy_anim()
show_hurt()

//adicionar graviddade caso esteja subindo
if (velz != 0) velz += grav;

//colisao com o chao
if((z + velz) > 0){
	velz = 0;
	z = 0;
	 
			x_scale = 1.7;
y_scale = 1;

//fumacinha
repeat(2){
		
			with (instance_create_depth(x,y+5,depth-2,obj_particle_hit)){
debris = false;
                depth = -3;
				image_alpha = .5;
				image_speed = 1;
				sprite_index = spr_hitparticle
				image_angle = random(360)
				fric = .8
				var _dir = choose(0,180)
				motion_add(_dir+random_range(-30,30), random_range(-1,-3));
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
			alarm[1] = irandom_range(5,60);
			ativar_alarm = false;
			ativar_alarm2 = true;
		}
		
	
			
		
	}else{
		
		
				attack_spd = 2;

		//ativando o larm
		if (ativar_alarm == false){
			alarm[2] = 12.5;
			ativar_alarm2 = false;
			ativar_alarm = true;
			}
		
		}
			
	}
	
	if hp == 0{
	instance_change(obj_slime1_corpse,1);
	}

