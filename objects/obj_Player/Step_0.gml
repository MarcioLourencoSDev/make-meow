
meow = false;
if(global.fade_out){
	hspeed = 0;
	vspeed = 0
	exit;
}
if(estado_atual != ESTADOS.MEOW && controlado){
	#region KEYS
	meow = keyboard_check_pressed(ord("E"));
	hspd = keyboard_check(vk_left) || keyboard_check(vk_right) ? (keyboard_check(vk_right) - keyboard_check(vk_left)) * spd: 
		(keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;

	vspd = keyboard_check(vk_down) || keyboard_check(vk_up) ? (keyboard_check(vk_down) - keyboard_check(vk_up)) * spd: 
		(keyboard_check(ord("S")) - keyboard_check(ord("W"))) * spd;
	#endregion	

	// Analisando se o Player está muito tempo parado
	if(estado_atual == ESTADOS.IDLE){
		cont += 1;
		if(cont == 60*5){
			cont = 0;
			estado_atual = ESTADOS.IDLE_LONGTIME;
		}
	} else cont = 0;


	#region MOVEMENTS
	if(estado_atual != 3){
		hspeed = hspd;
		vspeed = vspd;
	}
	#endregion

	#region STATES
		if(hspd == 0 && vspd == 0 && estado_atual != ESTADOS.IDLE_LONGTIME){
			estado_atual = ESTADOS.IDLE;
		} else if(hspd > 0){
			image_xscale = 1;
			estado_atual = ESTADOS.MOVE;
		} else if(hspd < 0){
			image_xscale = -1;
			estado_atual = ESTADOS.MOVE;
		} else if(vspd > 0 || vspd < 0){
			estado_atual = ESTADOS.MOVE;
		} 
} 
else{
	hspeed = 0;
	vspeed = 0;
}
if(meow && estado_atual != ESTADOS.MEOW){
	image_index = 0;
	estado_atual = ESTADOS.MEOW;
	perda_coracao(vida);
}
#endregion


if(!place_meeting(x,y, obj_button)){
	collision_button = false;
}

if(total_mortes >= instance_number(obj_vida)){
	room_restart();
}