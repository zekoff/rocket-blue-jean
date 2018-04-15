// Check for a collision with a tile above or below.
// Return:
//	-1 if collision above
//	0 if no collision
//	1 if collision below

var TILE_WIDTH = 24;

var collision_tilemap = layer_tilemap_get_id("CollisionTiles");
var edge;
var collided = false;
// set vertical edge of interest
if (vspeed + gravity > 0) edge = bbox_bottom else edge = bbox_top; edge += (ceil(abs(vspeed + gravity)) * sign(vspeed + gravity));
// if intersecting solid tile @ edge top or edge bottom
if (tilemap_get_at_pixel(collision_tilemap, bbox_left, edge) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_right, edge) != 0) {
	if (vspeed > 0) {
		// Standing on a tile. Peg to top edge of tile to the bottom
		y = y - (y % TILE_WIDTH) - (bbox_bottom - y) + TILE_WIDTH - 1;
		collided = 1;
	} else {
		// Hitting head on a tile. Peg to bottom edge of tile to the top
		y = y - (y % TILE_WIDTH) - (bbox_top - y);
		collided = -1;
	}
}

return collided;