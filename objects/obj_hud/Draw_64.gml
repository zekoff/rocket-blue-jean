/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 55F3C7B4
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 672C19B0
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""Health""
draw_text(20, 20, string("Health") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 7EBCD643
/// @DnDApplyTo : 94206336-2ce3-4922-ae23-e64c1adeff7d
/// @DnDArgument : "x1" "20"
/// @DnDArgument : "y1" "60"
/// @DnDArgument : "x2" "200"
/// @DnDArgument : "y2" "90"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(20, 60, 200, 90, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 248AD08E
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C363BF8
/// @DnDArgument : "x" "1180"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""Weapon: ""
/// @DnDArgument : "var" "obj_player.equipment"
draw_text(1180, 20, string("Weapon: ") + string(obj_player.equipment));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 782A1853
/// @DnDArgument : "var" "obj_player.ammo"
/// @DnDArgument : "op" "2"
if(obj_player.ammo > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5ED7B00E
	/// @DnDParent : 782A1853
	/// @DnDArgument : "x" "1180"
	/// @DnDArgument : "y" "60"
	/// @DnDArgument : "caption" ""Ammo: ""
	/// @DnDArgument : "var" "obj_player.ammo"
	draw_text(1180, 60, string("Ammo: ") + string(obj_player.ammo));
}