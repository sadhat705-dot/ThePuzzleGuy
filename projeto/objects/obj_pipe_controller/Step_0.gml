// fade entrada
if (state == 0)
{
    fade -= fade_spd;
    if (fade <= 0)
    {
        fade = 0;
        state = 1;
    }
}

// jogando
if (state == 1)
{
    if (player.progress >= 50 && !dialog_mid)
    {
        dialog_mid = true;
        state = 2;
    }

    if (player.progress >= 90 && !dialog_end)
    {
        dialog_end = true;
        state = 3;
    }
}

// fala meio
if (state == 2)
{
    if (keyboard_check_pressed(vk_space))
    {
        state = 1;
		 audio_play_sound(Blip4,0,false);
    }
}

// fala final
if (state == 3)
{
    if (keyboard_check_pressed(vk_space))
    {
        state = 4;
		 audio_play_sound(Blip4,0,false);
    }
}

// fade saída
if (state == 4)
{
    fade += fade_spd;

    if (fade >= 255)
    {
		audio_stop_sound(Musica_Menu_Jogo);
        room_goto(rm_level1);
    }
}
