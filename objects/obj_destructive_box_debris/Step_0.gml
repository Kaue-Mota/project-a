var _kb_direction = random(360)


if (kb_amount > 0){
	x += lengthdir_x(kb_amount, _kb_direction);
	y += lengthdir_y(kb_amount, _kb_direction);
	
	kb_amount -= 1/10;

}

if kb_amount == 0{
	
image_alpha -=.005
}

//adicionar graviddade caso esteja subindo
if (velz != 0) velz += grav;

//colisao com o chao
if((z + velz) > 0){
	velz = 0;
	z = 0;
	
}
//velz+=grav
	z += velz;

// facing