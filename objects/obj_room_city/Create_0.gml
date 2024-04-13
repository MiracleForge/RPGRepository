var _room_w = room_width >> 4; // convertendo para bit 
var _room_h = room_height >> 4;
//show_message(_room_w);

global.room_grd = ds_grid_create(_room_w,_room_h);
ds_grid_clear(global.room_grd, 0);

//Pegando os dados da camada 
var _lay_id = ["wall_layer", "Decoration_layer"]


// Procurando os tile pelo meu mapa
for (var _i = 0; _i < array_length(_lay_id); _i++) {
	var _layer =  _lay_id[_i]
	var _map_id = layer_tilemap_get_id(_layer);
	for (var _y = 0; _y < _room_h; _y++) { // Rodando pelas linhas
	
		// Rodando pelas colunas
		for (var _x = 0; _x < _room_w; _x ++) {
			// existe um title na posição?
			var _data = tilemap_get(_map_id, _x, _y);
		
			if (_data) {
				global.room_grd[# _x, _y] = 1;	
			}
		}
		
	}
}

