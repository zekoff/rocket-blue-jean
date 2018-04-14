/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 03F1C3BB
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 0B6F4C94
/// @DnDArgument : "x1" "-8"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "18"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "8"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "21"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -8, y + 18, x + 8, y + 21, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));