// Check for horizontal collisions with tiles.
// Return:
//	-1 if collision detected left
//	0 if no collision
//	1 if collision detected right

var TILE_WIDTH = 24;

var collision_tilemap = layer_tilemap_get_id("CollisionTiles");
var edge;
var collided = 0;
// handle horizontal collisions
// set horizontal edge of interest
if (hsp > 0) edge = bbox_right else edge = bbox_left; edge += (ceil(abs(hsp)) * sign(hsp));
// if intersecting solid tile @ edge top or edge bottom
if (tilemap_get_at_pixel(collision_tilemap, edge, bbox_top) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, edge, bbox_bottom) != 0) {
	if (hsp > 0) {
		// Stopped by tile to right. Peg to left edge of tile to the right
		x = x - (x % TILE_WIDTH) - (bbox_right - x) + TILE_WIDTH - 1;
		collided = 1;
	} else {
		// Stopped by tile to left. Peg to right edge of tile to the left
		x = x - (x % TILE_WIDTH) - (bbox_left - x);
		collided = -1;
	}
}

return collided;