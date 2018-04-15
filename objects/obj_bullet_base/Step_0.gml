/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2F611F44
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5E1E4BAC
/// @DnDArgument : "var" "_collided_h"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "scr_collide_horizontal"
/// @DnDSaveInfo : "script" "ba0b0724-0fbe-448d-8627-27b6ab24bdc0"
var _collided_h = script_execute(scr_collide_horizontal);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 23B46C91
/// @DnDArgument : "var" "_collided_v"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "scr_collide_vertical"
/// @DnDSaveInfo : "script" "010aa336-d692-4401-9f03-11bdbb46153d"
var _collided_v = script_execute(scr_collide_vertical);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 09DA2CE5
/// @DnDArgument : "expr" "_collided_h != 0 || _collided_v != 0"
if(_collided_h != 0 || _collided_v != 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E7D68F3
	/// @DnDParent : 09DA2CE5
	instance_destroy();
}