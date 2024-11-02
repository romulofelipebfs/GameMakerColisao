/// @description Insert description here
// You can write your code in this editor

velx = 0;
vely = 0;
max_velx = 4;
max_vely = 8;

grav = .3;

movimenta = function(){
	
	var _right, _left, _jump, _chao;
	
	_right = keyboard_check(vk_right);
	_left = keyboard_check(vk_left);
	
	_chao = place_meeting(x, y + 1, obj_block);
	_jump = keyboard_check_pressed(vk_space);
	
	velx = (_right - _left) * max_velx;

	if(!_chao){ 
		vely += grav;
	}
	else{	
		vely = 0;	
		if(_jump){
			vely = -max_vely;
		}
	}
	
	
}