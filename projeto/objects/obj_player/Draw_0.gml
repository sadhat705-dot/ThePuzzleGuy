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
