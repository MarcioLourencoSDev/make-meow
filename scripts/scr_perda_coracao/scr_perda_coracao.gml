function perda_coracao(vida){
	vida--;
	with(obj_vida){
		if(image_index == 0){
		image_index = 1;
		obj_Player.total_mortes++;
		break;
		}
	}
}