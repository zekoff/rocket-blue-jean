// Check for a collision with a tile in any direction.
// Return true if a collision was detected, false otherwise.

// Tile Width = 24px
var TILE_WIDTH = 24;

var collision_tilemap = layer_tilemap_get_id("CollisionTiles");
var edge;
var collided = false;

if (vsp > 0) edge = bbox_bottom else edge = bbox_top; edge += (ceil(abs(vsp)) * sign(vsp));
if (tilemap_get_at_pixel(collision_tilemap, bbox_left, edge) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_right, edge) != 0) {
	if (vsp > 0) {
		// Standing on a tile. Peg to top edge of tile to the bottom
		y = y - (y % TILE_WIDTH) - (bbox_bottom - y) + TILE_WIDTH - 1;
	} else {
		// Hitting head on a tile. Peg to bottom edge of tile to the top
		y = y - (y % TILE_WIDTH) - (bbox_top - y);
	}
	vsp = 0;
	collided = true;
}

return collided;