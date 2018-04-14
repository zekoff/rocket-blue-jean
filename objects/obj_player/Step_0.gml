/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CF44BD7
/// @DnDArgument : "expr" "gravity_power"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "vsp"
vsp += gravity_power;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 160A1242
/// @DnDArgument : "code" "// Apply movement friction$(13_10)if (on_ground && hsp != 0) {$(13_10)	var dir = sign(hsp);$(13_10)	hsp = max(0, abs(hsp) - friction_power);$(13_10)	hsp *= dir;$(13_10)}"
// Apply movement friction
if (on_ground && hsp != 0) {
	var dir = sign(hsp);
	hsp = max(0, abs(hsp) - friction_power);
	hsp *= dir;
}

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
	/// @DnDArgument : "expr" "acceleration"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hsp"
	hsp += acceleration;
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
	/// @DnDArgument : "expr" "-acceleration"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hsp"
	hsp += -acceleration;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2BFFE892
/// @DnDInput : 3
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "function" "clamp"
/// @DnDArgument : "arg" "hsp"
/// @DnDArgument : "arg_1" "-max_movement_speed"
/// @DnDArgument : "arg_2" "max_movement_speed"
hsp = clamp(hsp, -max_movement_speed, max_movement_speed);

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 24F0BAEE
/// @DnDArgument : "btn" "gp_face1"
var l24F0BAEE_0 = 0;
var l24F0BAEE_1 = gp_face1;
if(gamepad_is_connected(l24F0BAEE_0) && gamepad_button_check_pressed(l24F0BAEE_0, l24F0BAEE_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32FD55E2
	/// @DnDParent : 24F0BAEE
	/// @DnDArgument : "var" "jumps_remaining"
	/// @DnDArgument : "op" "2"
	if(jumps_remaining > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17BABDD9
		/// @DnDInput : 2
		/// @DnDParent : 32FD55E2
		/// @DnDArgument : "expr" "-jump_power"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "var_1" "jumps_remaining"
		vsp = -jump_power;
		jumps_remaining += -1;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7212C9A0
/// @DnDArgument : "script" "scr_collide"
/// @DnDSaveInfo : "script" "0421c019-b45a-49cc-af37-8b29ff592cfe"
script_execute(scr_collide);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 493103AE
/// @DnDArgument : "expr" "on_ground"
if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A41B015
	/// @DnDParent : 493103AE
	/// @DnDArgument : "expr" "number_jumps"
	/// @DnDArgument : "var" "jumps_remaining"
	jumps_remaining = number_jumps;
}

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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E580A7C
/// @DnDArgument : "expr" "hsp != 0"
if(hsp != 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3ACC2EE9
	/// @DnDParent : 3E580A7C
	/// @DnDArgument : "xscale" "sign(hsp)"
	image_xscale = sign(hsp);
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 2A849349
/// @DnDArgument : "btn" "gp_face3"
var l2A849349_0 = 0;
var l2A849349_1 = gp_face3;
if(gamepad_is_connected(l2A849349_0) && gamepad_button_check_pressed(l2A849349_0, l2A849349_1))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4BED52EA
	/// @DnDParent : 2A849349
	/// @DnDArgument : "msg" ""bang!""
	show_debug_message(string("bang!"));
}