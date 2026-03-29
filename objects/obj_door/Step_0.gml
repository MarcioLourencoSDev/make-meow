var botoes_abertos = 0;

with (obj_button) {
	if (aberto) botoes_abertos++;
}

if (botoes_abertos >= instance_number(obj_button))
	obj_door.image_index = 1;
else
	obj_door.image_index = 0;