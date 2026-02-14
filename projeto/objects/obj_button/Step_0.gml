// detecta pressão (player ou bloco)
var pressed = place_meeting(x, y - 1, obj_player) || place_meeting(x, y - 1, obj_block);

// ===============================
// VISUAL DO BOTÃO
// ===============================
if (pressed)
{
    is_pressed = true;
    sprite_index = spr_button_down;
}
else
{
    is_pressed = false;
    sprite_index = spr_button_up;
}

// ===============================
// LÓGICA
// ===============================
if (pressed)
{
    // ==========================
    // CASO ESPECIAL rm_level6
    // ==========================
    if (room == rm_level6)
    {
        if (!used)
        {
            used = true;

            with (obj_lever)
            {
                // sobe 2 tiles (64 px)
                x -= 64;
            }
        }

        // NÃO ativa porta
    }
    else
    {
        // ==========================
        // NORMAL: ativa porta
        // ==========================
        global.button_active = true;
    }
}
else
{
    // reset apenas fora da level6
    if (room != rm_level6)
        global.button_active = false;
}
