event_inherited();
script_execute(estado);


//adicionar graviddade caso esteja subindo
if (velz != 0) velz += grav;

//colisao com o chao
if((z + velz) > 0){
	velz = 0;
	z = 0;
	 
			x_scale = 1.7;
y_scale = 1;
}


//velz+=grav

	z += velz;


if estado == slime_perseguir{
	
	if pular == false{
	
		attack_spd = 0;

		//ativando o larm
		if (ativar_alarm2 == false){
			alarm[1] = irandom_range(30,60);
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
	instance_destroy();
	}

