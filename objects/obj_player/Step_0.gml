/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CF44BD7
/// @DnDInput : 2
/// @DnDArgument : "expr_1" ".2"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "var_1" "vsp"
hsp = 0;
vsp += .2;

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 300FEE19
/// @DnDArgument : "btn" "gp_padr"
var l300FEE19_0 = 0;
var l300FEE19_1 = gp_padr;
if(gamepad_is_connected(l300FEE19_0) && (gamepad_button_check(l300FEE19_0, l300FEE19_1) || gamepad_button_check_released(l300FEE19_0, l300FEE19_1)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 429696B7
	/// @DnDParent : 300FEE19
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "hsp"
	hsp = 3;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4775CD53
/// @DnDArgument : "btn" "gp_padl"
var l4775CD53_0 = 0;
var l4775CD53_1 = gp_padl;
if(gamepad_is_connected(l4775CD53_0) && (gamepad_button_check(l4775CD53_0, l4775CD53_1) || gamepad_button_check_released(l4775CD53_0, l4775CD53_1)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0894EDCA
	/// @DnDParent : 4775CD53
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "var" "hsp"
	hsp = -3;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 2CEAB998
/// @DnDArgument : "btn" "gp_padd"
var l2CEAB998_0 = 0;
var l2CEAB998_1 = gp_padd;
if(gamepad_is_connected(l2CEAB998_0) && (gamepad_button_check(l2CEAB998_0, l2CEAB998_1) || gamepad_button_check_released(l2CEAB998_0, l2CEAB998_1)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 490D4D9C
	/// @DnDParent : 2CEAB998
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "vsp"
	vsp = 3;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 311BD5C9
/// @DnDArgument : "btn" "gp_padu"
var l311BD5C9_0 = 0;
var l311BD5C9_1 = gp_padu;
if(gamepad_is_connected(l311BD5C9_0) && (gamepad_button_check(l311BD5C9_0, l311BD5C9_1) || gamepad_button_check_released(l311BD5C9_0, l311BD5C9_1)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 036F1122
	/// @DnDParent : 311BD5C9
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "var" "vsp"
	vsp = -3;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 24F0BAEE
/// @DnDArgument : "btn" "gp_face1"
var l24F0BAEE_0 = 0;
var l24F0BAEE_1 = gp_face1;
if(gamepad_is_connected(l24F0BAEE_0) && gamepad_button_check_pressed(l24F0BAEE_0, l24F0BAEE_1))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17BABDD9
	/// @DnDParent : 24F0BAEE
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "var" "vsp"
	vsp = -4;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7212C9A0
/// @DnDArgument : "script" "scr_collide"
/// @DnDSaveInfo : "script" "0421c019-b45a-49cc-af37-8b29ff592cfe"
script_execute(scr_collide);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28DD174D
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;