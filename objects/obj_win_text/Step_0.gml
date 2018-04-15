/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 59199488
/// @DnDArgument : "btn" "gp_face1"
var l59199488_0 = 0;
var l59199488_1 = gp_face1;
if(gamepad_is_connected(l59199488_0) && gamepad_button_check_pressed(l59199488_0, l59199488_1))
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 411FBAAF
	/// @DnDParent : 59199488
	game_end();
}