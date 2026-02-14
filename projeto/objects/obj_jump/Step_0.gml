// ===============================
// CONFIG
// ===============================
var tile = 32;

// ===============================
// INIT SE NÃO EXISTIR
// ===============================
if (!variable_instance_exists(id, "jump_count"))
{
    jump_count = 0;
    activated = false;
}

// ===============================
// DETECTA PLAYER EM CIMA
// ===============================
if (!activated && place_meeting(x, y, obj_player))
{
    var p = instance_place(x, y, obj_player);

    if (p != noone)
    {
        // detecta pulo (quando vsp fica negativo)
        if (p.vsp < 0 && !p.jump_hold)
        {
            p.jump_hold = true;
            jump_count++;
        }

        if (p.vsp >= 0)
        {
            p.jump_hold = false;
        }
    }
}

// ===============================
// ATIVA MECÂNICA APÓS 3 PULOS
// ===============================
if (!activated && jump_count >= 3)
{
    activated = true;

    // porta desce
    with (obj_door)
    {
        y += 11 * 32;
    }

    // botão anda direita
    with (obj_button_pyr)
    {
        x += 4 * 32;
    }
	
}
