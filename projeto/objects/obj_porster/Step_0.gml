// verifica se player está perto
var p = instance_nearest(x, y, obj_player);

if (distance_to_object(p) < 64)
{
    show_hint = true;

    // apertou F
    if (keyboard_check_pressed(ord("F")))
    {
        global.poster_removed = true;

        // opcional: som rasgando
         audio_play_sound(Blip3,0,false);

        instance_destroy();
    }
}
else
{
    show_hint = false;
}
