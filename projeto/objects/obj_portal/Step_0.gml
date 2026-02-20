if (cooldown > 0)
    cooldown--;

// ================= PLAYER =================
if (cooldown <= 0 && place_meeting(x, y, obj_player))
{
    audio_play_sound(Enter_Portals, 1, false);

    with (obj_portal)
    {
        if (portal_id == other.portal_id && id != other.id)
        {
            other.cooldown = 20;
            cooldown = 20;

            with (obj_player)
            {
                x = other.x + 24;
                y = other.y;
            }
        }
    }
}

// ================= BLOCO =================
if (cooldown <= 0 && place_meeting(x, y, obj_block))
{
    audio_play_sound(Enter_Portals, 1, false);

    var b = instance_place(x, y, obj_block);

    if (b != noone)
    {
        with (obj_portal)
        {
            if (portal_id == other.portal_id && id != other.id)
            {
                other.cooldown = 20;
                cooldown = 20;

                with (b)
                {
                    x = other.x + 24*3;
                    y = other.y;
                }
            }
        }
    }
}
