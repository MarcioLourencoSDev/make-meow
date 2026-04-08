if(global.activated_pianista && estado_atual == noone){
	estado_atual = estados.sumonando
	sprite_index = spr_pianista_summon;
	image_index = 0;
}
else if (image_index == image_number - 1 && estado_atual == estados.sumonando) {
    sprite_index = spr_pianista_playing; // Muda para o sprite spr_pianista_playing
    image_index = 0; // Reinicia a animação para o primeiro quadro do novo sprite
	estado_atual = estados.tocando;
	alarm[0] = 60*4;
}