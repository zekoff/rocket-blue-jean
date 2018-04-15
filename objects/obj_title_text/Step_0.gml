/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 3E378D63
/// @DnDArgument : "btn" "gp_face1"
var l3E378D63_0 = 0;
var l3E378D63_1 = gp_face1;
if(gamepad_is_connected(l3E378D63_0) && gamepad_button_check_pressed(l3E378D63_0, l3E378D63_1))
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7F767232
	/// @DnDParent : 3E378D63
	room_goto_next();
}