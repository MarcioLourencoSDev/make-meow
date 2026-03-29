image_alpha -= valor;
if(image_alpha <= 0){
	global.fade_out = false;
	instance_destroy();
}