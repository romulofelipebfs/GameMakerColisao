/// @description Insert description here
// You can write your code in this editor

movimenta();

var _col =  move_and_collide(velx, vely, all, 12);

if(array_length(_col) > 0){
	var _nome = object_get_name(_col[0].object_index);
	if(_nome == "obj_rampa"){
		vely = 0;
	}
	if(_nome == "obj_plat_movel"){
		vely = 0;
		
		x+= _col[0].hspeed;
	}
}