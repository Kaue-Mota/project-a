event_inherited()


//sombra
draw_sprite(spr_slime_shadow,0,x,bbox_bottom)

draw_sprite_ext(sprite_index, image_index, x, y+z,image_xscale * x_scale, y_scale, rot, c_white, 1);

//FLASH
if hit_alpha > 0{
gpu_set_fog(1, hit_color,0,0)


draw_sprite_ext(sprite_index, image_index, x, y+z, x_scale, y_scale, rot, c_white, hit_alpha);


gpu_set_fog(0, hit_color,0,0)
}


