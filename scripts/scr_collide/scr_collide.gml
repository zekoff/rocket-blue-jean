// Check for a collision with a tile in any direction. (based on hspeed/vspeed)
// Return true if a collision was detected, false otherwise.

// Tile Width = 24px
var TILE_WIDTH = 24;

var collision_tilemap = layer_tilemap_get_id("CollisionTiles");
var edge;
var collided = false;
// handle horizontal collisions
// set horizontal edge of interest
if (hspeed > 0) edge = bbox_right else edge = bbox_left; edge += (ceil(abs(hspeed)) * sign(hspeed));
// if intersecting solid tile @ edge top or edge bottom
if (tilemap_get_at_pixel(collision_tilemap, edge, bbox_top) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, edge, bbox_bottom) != 0) {
	if (hspeed > 0) {
		// Stopped by tile to right. Peg to left edge of tile to the right
		x = x - (x % TILE_WIDTH) - (bbox_right - x) + TILE_WIDTH - 1;
	} else {
		// Stopped by tile to left. Peg to right edge of tile to the left
		x = x - (x % TILE_WIDTH) - (bbox_left - x);
	}
	hspeed = 0;
	collided = true;
}

on_ground = false;
if (vspeed + gravity > 0) edge = bbox_bottom else edge = bbox_top; edge += (ceil(abs(vspeed + gravity)) * sign(vspeed + gravity));
if (tilemap_get_at_pixel(collision_tilemap, bbox_left, edge) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_right, edge) != 0) {
	if (vspeed + gravity > 0) {
		// Standing on a tile. Peg to top edge of tile to the bottom
		y = y - (y % TILE_WIDTH) - (bbox_bottom - y) + TILE_WIDTH - 1;
		on_ground = true;
		gravity = 0;
	} else {
		// Hitting head on a tile. Peg to bottom edge of tile to the top
		y = y - (y % TILE_WIDTH) - (bbox_top - y);
	}
	vspeed = 0;
	collided = true;
}

return collided;