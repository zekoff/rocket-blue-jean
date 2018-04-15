/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B5F8F5D
/// @DnDArgument : "expr" "gravity_power"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "vspeed"
vspeed += gravity_power;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2C1E2153
/// @DnDArgument : "var" "_collided_vertical"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "scr_collide_vertical_test"
/// @DnDSaveInfo : "script" "010aa336-d692-4401-9f03-11bdbb46153d"
var _collided_vertical = script_execute(scr_collide_vertical_test);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 11BF3DE7
/// @DnDArgument : "expr" "_collided_vertical != 0"
if(_collided_vertical != 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0E7C68D6
	/// @DnDParent : 11BF3DE7
	/// @DnDArgument : "type" "2"
	vspeed = 0;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5D8EFF33
/// @DnDArgument : "var" "_collided_horizontal"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "scr_collide_horizontal_test"
/// @DnDSaveInfo : "script" "ba0b0724-0fbe-448d-8627-27b6ab24bdc0"
var _collided_horizontal = script_execute(scr_collide_horizontal_test);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 561D750F
/// @DnDArgument : "expr" "_collided_horizontal != 0"
if(_collided_horizontal != 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 435376E2
	/// @DnDParent : 561D750F
	/// @DnDArgument : "speed" "walk_speed *- _collided_horizontal"
	/// @DnDArgument : "type" "1"
	hspeed = walk_speed *- _collided_horizontal;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 48BE14FA
/// @DnDArgument : "xscale" "sign(hspeed)"
image_xscale = sign(hspeed);
image_yscale = 1;