/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B5F8F5D
/// @DnDArgument : "expr" "gravity_power"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "vsp"
vsp += gravity_power;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2C1E2153
/// @DnDArgument : "script" "scr_collide_vertical"
/// @DnDSaveInfo : "script" "86c83681-bb0a-4559-81cc-93771d6bf584"
script_execute(scr_collide_vertical);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5D8EFF33
/// @DnDArgument : "var" "_collided_horizontal"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "scr_collide_horizontal"
/// @DnDSaveInfo : "script" "7551b329-df23-408b-b20c-8114e9139f2a"
var _collided_horizontal = script_execute(scr_collide_horizontal);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 561D750F
/// @DnDArgument : "expr" "_collided_horizontal != 0"
if(_collided_horizontal != 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C75F187
	/// @DnDParent : 561D750F
	/// @DnDArgument : "expr" "walk_speed *- _collided_horizontal"
	/// @DnDArgument : "var" "hsp"
	hsp = walk_speed *- _collided_horizontal;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6922B9D7
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 48BE14FA
/// @DnDArgument : "xscale" "sign(hsp)"
image_xscale = sign(hsp);
image_yscale = 1;