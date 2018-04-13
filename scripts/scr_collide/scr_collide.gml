// Collision Tile ID = 36
var COLLISION_TILE = 36;
// Tile Width = 24px
var TILE_WIDTH = 24;

var collision_tilemap = layer_tilemap_get_id("CollisionTiles");
var edge;
// handle horizontal collisions
// set horizontal edge of interest
if (hsp > 0) edge = bbox_right else edge = bbox_left; edge += ceil(hsp);
// if intersecting solid tile @ edge top or edge bottom
if (tilemap_get_at_pixel(collision_tilemap, edge, bbox_top) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, edge, bbox_bottom) != 0) {
	if (hsp > 0) {
		// peg to left edge of tile to the right
		x = x - (x % TILE_WIDTH) - (bbox_right - x) + TILE_WIDTH - 1;
	} else {
		// peg to right edge of tile to the left
		x = x - (x % TILE_WIDTH) - (bbox_left - x);
	}
	hsp = 0;
}

if (vsp > 0) edge = bbox_bottom else edge = bbox_top; edge += ceil(vsp);
if (tilemap_get_at_pixel(collision_tilemap, bbox_left, edge) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_right, edge) != 0) {
	if (vsp > 0) {
		// peg to top edge of tile to the bottom
		y = y - (y % TILE_WIDTH) - (bbox_bottom - y) + TILE_WIDTH - 1;
	} else {
		// peg to bottom edge of tile to the top
		y = y - (y % TILE_WIDTH) - (bbox_top - y);
	}
	vsp = 0;
}