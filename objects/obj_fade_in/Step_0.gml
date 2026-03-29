image_alpha += valor;
if(image_alpha >= 1){
	global.fade_out = false;
	if(room != room_last) room_goto_next();
	else room_goto_previous();
	instance_destroy();
}