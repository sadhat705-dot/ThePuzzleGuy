var cam = view_camera[0];
var ww = camera_get_view_width(cam);
var hh = camera_get_view_height(cam);

// SCROLL INFINITO
scroll_x = (scroll_x + speed_x) mod tile_w;

for (var xx = -tile_w; xx < ww + tile_w; xx += tile_w)
{
    for (var yy = -tile_h; yy < hh + tile_h; yy += tile_h)
    {
        var px = xx - scroll_x;
        var py = yy;

        // sombra leve vertical (ambiente)
        var shade = yy / hh;
        var col = merge_color(c_white, c_black, shade * 0.15);

        draw_sprite_ext(
            spr_details,
            0,
            px,
            py,
            1,
            1,
            0,
            col,
            1
        );
    }
}
