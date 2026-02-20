if (global.dark_mode)
{
    // INVERTE A TELA TODA
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_zero);
    draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false);
    gpu_set_blendmode(bm_normal);

    // ==========================
    // REDESENHA PLAYER NORMAL
    // ==========================

    with (obj_player)
    {
        
		
		draw_self();

// altura do peito
var chest_y = y - 12;

// mão padrão
var normal_side = 18;

// detectar empurrão
var pushing = false;
var blk = noone;

if (keyboard_check(ord("F")))
{
    if (image_xscale == 1)
        blk = instance_place(x + 16, y, obj_block);
    else
        blk = instance_place(x - 16, y, obj_block);

    if (blk != noone) pushing = true;
}

// EMPURRANDO
if (pushing)
{
    var hand_x;

    if (image_xscale == 1)
        hand_x = blk.bbox_left + 1;
    else
        hand_x = blk.bbox_right - 1;

    draw_sprite_ext(spr_hand,0,hand_x,chest_y-2,image_xscale,1,0,c_white,1);
    draw_sprite_ext(spr_hand,0,hand_x,chest_y+4,image_xscale,1,0,c_white,1);
}
else
{
    var swing = 0;

    if (abs(hsp) > 0)
        swing = sin(current_time * 0.02) * 2;

    draw_sprite_ext(spr_hand,0,x + normal_side * image_xscale,chest_y + swing,image_xscale,1,0,c_white,1);
    draw_sprite_ext(spr_hand,0,x - normal_side * image_xscale,chest_y - swing,image_xscale,1,0,c_white,1);
}

    }

 

}
