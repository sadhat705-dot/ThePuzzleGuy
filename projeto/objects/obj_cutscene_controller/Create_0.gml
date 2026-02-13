global.poster_removed = false;

state = 0;

fade = 255;
fade_speed = 8;

dialog_index = 0;

dialog[0] = "nunca mais tento piratear filmes...";
dialog[1] = "bom que ja fiz minha rota de fuga com as colheres da prisão";

dialog2[0] = "tenho que ir rápido , os policiais estão vindo";
audio_play_sound(Musica_Menu_Jogo, 0, true);
player = instance_find(obj_player,0);

// trava player no começo
player.can_move = false;
window_set_fullscreen(true)

