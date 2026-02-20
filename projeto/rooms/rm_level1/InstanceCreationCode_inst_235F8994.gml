// ===============================
// SPRITES
// ===============================
sprite_closed = spr_door_closed;
sprite_open   = spr_door_open;


// ===============================
// ESTADO INICIAL (FORÇADO)
// ===============================
door_open = false;
go_next = false;


// ===============================
// VISUAL INICIAL
// ===============================
sprite_index = sprite_closed;
image_index = 0;
image_speed = 0;
solid = true;


// ===============================
// ROOM DESTINO
// ===============================
rm_next = rm_level2;


// ===============================
// FADE
// ===============================
fade = 1;
fade_speed = 0.05;
fading_in = true;
