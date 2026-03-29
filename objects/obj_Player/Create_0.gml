randomize();
collision_button = false;

depth = -1; // Ficar Sobreposto
// Controlar Gato
controlado = false;
inst = instance_find(obj_Player, 0);

if(inst == id){
	controlado = true;
}

// Skin do Gato
gato_manchado = [spr_cat_atenas_idle, spr_cat_atenas_move, spr_cat_atenas_idle_longtime, spr_cat_atenas_meow, spr_cat_atenas_jump];
gato_tigrado = [spr_cat_yoshi_idle, spr_cat_yoshi_move, spr_cat_yoshi_idle_longtime, spr_cat_yoshi_meow, spr_cat_yoshi_jump];
gato_preto = [spr_cat_pretinho_idle, spr_cat_pretinho_move, spr_cat_pretinho_idle_longtime, spr_cat_pretinho_meow, spr_cat_pretinho_jump];

all_skins = [gato_manchado, gato_tigrado, gato_preto];

sorteio = floor(random_range(1,4) - 1);

skin = all_skins[sorteio];
// ESTADOS PARA SPR
enum ESTADOS{
	IDLE,
	MOVE,
	IDLE_LONGTIME,
	MEOW,
	JUMP
}
estado_atual = ESTADOS.IDLE;
//Velocidade do Player
spd = 2;

//Contador de tempo parado;
cont  = 0;

// Vida do PLayer
vida = instance_number(obj_vida);
total_mortes = 0;