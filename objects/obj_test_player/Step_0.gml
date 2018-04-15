/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 2CABA435
/// @DnDArgument : "force" ".2"
gravity = .2;

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 583DD2EE
/// @DnDArgument : "btn" "gp_padl"
var l583DD2EE_0 = 0;
var l583DD2EE_1 = gp_padl;
if(gamepad_is_connected(l583DD2EE_0) && gamepad_button_check_pressed(l583DD2EE_0, l583DD2EE_1))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 20E4DEA6
	/// @DnDParent : 583DD2EE
	/// @DnDArgument : "speed" "-3"
	/// @DnDArgument : "type" "1"
	hspeed = -3;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 707C699D
/// @DnDArgument : "btn" "gp_padr"
var l707C699D_0 = 0;
var l707C699D_1 = gp_padr;
if(gamepad_is_connected(l707C699D_0) && gamepad_button_check_pressed(l707C699D_0, l707C699D_1))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3A5C8DD0
	/// @DnDParent : 707C699D
	/// @DnDArgument : "speed" "3"
	/// @DnDArgument : "type" "1"
	hspeed = 3;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 21B6D582
/// @DnDArgument : "script" "scr_collide_test"
/// @DnDSaveInfo : "script" "710b4975-97fa-4e66-a74b-f9c8914ab8b8"
script_execute(scr_collide_test);