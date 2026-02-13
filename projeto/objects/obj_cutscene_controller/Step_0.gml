switch(state)
{

// FADE IN
case 0:
    fade -= fade_speed;
    if (fade <= 0)
    {
        fade = 0;
        state = 1;
    }
break;


// PRIMEIRO DIÁLOGO
case 1:
    if (keyboard_check_pressed(vk_space))
    {
        dialog_index++;
 audio_play_sound(Blip4,0,false);
        if (dialog_index >= 2)
        {
            state = 2;
            player.can_move = true;
        }else {
			player.can_move = false
		}
    }
break;


// PLAYER LIVRE ATÉ POSTER
case 2:
    if (global.poster_removed)
    {
        player.can_move = false;
        dialog_index = 0;
        state = 3;
    }
break;


// SEGUNDA FALA
case 3:
    if (keyboard_check_pressed(vk_space))
    {
        state = 4;
    }
break;


// ENTRANDO NO TUNEL
case 4:
    fade += fade_speed;

    if (fade >= 255)
    {
        room_goto(rm_cutscene2);
		
    }
break;

}
